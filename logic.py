from models import Address, IncomeData,PopulationData,UserAddress
from dbfuncs import commit_places_db
from models import db
from pytrends.request import TrendReq
import requests
import os
from keys import google_key
import googlemaps
import json
import aiohttp
import asyncio
import time
import pandas as pd
# google_key = os.environ.get('GOOGLE_KEY')
gmaps = googlemaps.Client(key=google_key)


BASE_URL = 'https://maps.googleapis.com/maps/api/'
pytrends = TrendReq(hl='en-US', tz=360)

class PotentialLocation():

    def __init__(self, street, city, state,  user_id, type='restaurant', sub_type='fast food'):
        self.address = self.check_if_address_exists(street,city,state,user_id)
        self.saved_addresses = UserAddress.query.filter_by(user_id=user_id).all()
        self.location = self.geocode_address_v3(self.address.street, self.address.city, self.address.state)
        self.pop_data = PopulationData.query.filter_by(county_code=self.location['geocode']).first()
        self.income_data = IncomeData.query.filter_by(county=self.pop_data.name).first()
        self.type = type
        self.sub_type = sub_type

    # use Google Maps API to Search for Restaurants within a radius
    def get_places_nearby(self, radius=3000):
        url = f'{BASE_URL}place/nearbysearch/json'
        if len(self.address.places) == 0:

            location = f"{self.location['cords']['lat']} {self.location['cords']['lng']}"

            response = gmaps.places_nearby(
            location=location,
            type='restaurant',
            radius=3000) 

            commit_places_db(response, self.address.id)
            next_page_token = response.get('next_page_token')

            while next_page_token != None:
                time.sleep(1)
                token = self.get_next_page(next_page_token,url, self.address.id)
                next_page_token = token

        else:
            return self.address.places
            
    # calculate competition data to display on chart
    def get_competiton_data(self):
        competition_data = {}

        places_count = sum([1 for place in self.address.places if place.overall_rating != None and place.ratings_count > 300])
        if places_count > 0:
            competition_data['average_rating'] = round(sum([place.overall_rating for place in self.address.places if place.overall_rating != None and place.ratings_count > 300])/places_count, 2)
            competition_data['saturation'] = (self.pop_data.population_density * 11)/ len(self.address.places)
            places_count = sum([1 for place in self.address.places if place.price_level != None])
            competition_data['average_price'] = round(sum([place.price_level for place in self.address.places if place.price_level != None])/places_count,2)
        return competition_data

    # api call to return geocoded address from a standard address
    def geocode_address_v3(self,street_address,city,state):
        url = 'http://www.yaddress.net/api/address'
        payload =  {'AddressLine1': street_address, 'AddressLine2': f'{city}+{state}'}
        response = requests.request('GET', url, params=payload)
        data = response.json()
        geocode = data['StateFP']+data['CountyFP']
        location = {'lat': data['Latitude'], 'lng': data['Longitude']}
        return {'cords':location, 'geocode':geocode}

    #get next page from gogole maps api by next page token
    def get_next_page(self, next_page_token,url, address_id):
        payload =  {'pagetoken': next_page_token, 'key': google_key}
        response = requests.request("GET", url, params=payload)
        data = response.json()
        
        commit_places_db(data,address_id)
        next_page_token = data.get('next_page_token')
        return next_page_token

    #check if address already in database and return it else create it 
    def check_if_address_exists(self, street,city,state,user_id):
            if db.session.query(db.session.query(Address).filter_by(street=street).exists()).scalar():
                return Address.query.filter_by(street=street).first()
            else:
                new_address = Address(street=street,city=city,state=state)
                db.session.add(new_address)
                db.session.commit()
                new_user_address = UserAddress(user_id=user_id,address_id=new_address.id)
                db.session.add(new_user_address)
                db.session.commit()
                return new_address



class TrendApi():
    
    def __init__(self, sub_type, state_code):
      self.sub_type = sub_type
      self.geo = state_code
      self.intrest_data = { 'today 5-y': 0,'today 12-m': 0, 'today 3-m': 0, 'today 1-m': 0}
      self.timeframes = ['today 5-y','today 12-m', 'today 3-m', 'today 1-m']
      self.kw_list = ['food', 'food near me','near me']

    async def main(self):
        async with aiohttp.ClientSession() as session:
            tasks = []
            for timeframe in self.timeframes:
                for kw in self.kw_list:
                    tasks.append(asyncio.ensure_future(self.trends_api_call(session, timeframe, kw)))

            task_data = await asyncio.gather(*tasks)
        for data in task_data:
            self.process_data(data['response'],data['timeframe'])
 
        return self.intrest_data

    async def trends_api_call(self, session, timeframe, kw):
        payload = self.build_request(timeframe=timeframe, kw=kw, geo=self.geo)
        async with session.get(pytrends.RELATED_QUERIES_URL, timeout=None, cookies=pytrends.cookies, params=payload['payload']) as resp:
            response = await resp.text()
            return {'response':response, 'timeframe':timeframe, 'kw':kw}

    def build_request(self, timeframe, kw='food', geo='CA'):
        pytrends.build_payload(kw_list=[kw],cat=71, timeframe=timeframe, geo=f'US-{self.geo}', gprop='')

        related_payload = dict()

        for request_json in pytrends.related_queries_widget_list:
            related_payload['req'] = json.dumps(request_json['request'])
            related_payload['token'] = request_json['token']
            related_payload['tz'] = 360

        return {'payload':related_payload, 'kw':kw}


    def process_data(self, response, timeframe):
        result_dict = dict()
        content = response[5:]
        data = json.loads(content)

        try:
            top_df = pd.DataFrame(
                data['default']['rankedList'][0]['rankedKeyword'])
            top_df = top_df[['query', 'value']]
        except KeyError:
            top_df = None

        result_dict[timeframe] = {'top': top_df}

        return self.make_intrest_data(result_dict, timeframe)
    

    def make_intrest_data(self, data, timeframe):
        intrest_score = self.intrest_data[timeframe]
        queries = [(idx,query) for idx,query in enumerate(data[timeframe]['top']['query']) if self.sub_type in query]
        values = [value for value in data[timeframe]['top']['value']]
        
        for idx,query in queries:
            intrest_score += values[idx]
            self.intrest_data[timeframe] = intrest_score
        return self.intrest_data









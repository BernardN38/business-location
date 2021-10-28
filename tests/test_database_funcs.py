import os
from unittest import TestCase
from sqlalchemy import exc, create_engine
from random import randint
from models import IncomeData, PopulationData, db, User, Place, PlaceAddress, Address, UserAddress
from logic import PotentialLocation,geocode_address_v3

os.environ['DATABASE_URL'] = "postgresql:///capstone_test_db"



from app import app



class UserModelTestCase(TestCase):

    def setUp(self):
        db.create_all()
        
        self.uid = randint(1,100000)
        user = User.register(f'tester{self.uid}', 'password123', f'testinguser{self.uid}@gmail.com')
        user.id = self.uid

        db.session.add(user)
        db.session.commit()


        self.user = User.query.get(self.uid)
        self.client = app.test_client()

    def tearDown(self):
        resp = super().tearDown()
        db.session.rollback()
        return resp
    
    def test_new_location_population_data(self):
        new_location = PotentialLocation('6002 jane lane', 'austin', 'texas', self.user.id)
        self.assertEqual(new_location.pop_data, PopulationData.query.get(2769))

    def test_new_location_income_data(self):
        new_location = PotentialLocation('1455 Laurel Canyon Blvd', 'San Fernando', 'ca', self.user.id)
        self.assertEqual(new_location.income_data, IncomeData.query.get(210))
    
    def test_new_location_income_data(self):
        new_location = PotentialLocation('1455 Laurel Canyon Blvd', 'San Fernando', 'ca', self.user.id)
        self.assertEqual(new_location.income_data, IncomeData.query.get(210))
    
    def test_geocoder(self):
        addresses = len(Address.query.all())
        new_location = PotentialLocation('20 W 34th St', 'New York', 'NY', self.user.id)
        addresses_2 = len(Address.query.all())
        self.assertEqual(addresses_2, addresses+1)

    def test_get_places_api(self):
        new_address = PotentialLocation('1103 Biscayne Blvd', 'Miami', 'Fl', self.user.id)
        length_before = len(new_address.address.places)
        new_address.get_places_nearby()
        length_after = len(new_address.address.places)
        self.assertGreater(length_after, length_before)

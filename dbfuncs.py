from models import Place, PlaceAddress, PlaceType, Type, db

def commit_places_db(results, address_id):
    
    for result in results['results']:
        exists = db.session.query(
        db.session.query(Place).filter_by(place_id=result['place_id']).exists()  ).scalar()

        if not exists:
            new_place = Place(
                name=result['name'].encode('utf-8'),
                place_id=result['place_id'],
                lat=result['geometry']['location']['lat'],
                lng=result['geometry']['location']['lng'], 
                price_level=result.get('price_level'),
                overall_rating=result.get('rating'),
                ratings_count=result.get('user_ratings_total'))

            place_address = PlaceAddress(place_id=result['place_id'], address_id=address_id)
            objects = [new_place, place_address]
            db.session.add_all(objects)
            db.session.commit()

        exists = db.session.query(
        db.session.query(PlaceAddress).filter_by(place_id=result['place_id'], address_id=address_id).exists()).scalar()
        if not exists:
            place_address = PlaceAddress(place_id=result['place_id'], address_id=address_id)
            db.session.add(place_address)
            db.session.commit()
        else:
            print('already associated place-address')

        for type in result['types']:
            db.session.add(PlaceType(place_id=result['place_id'], type_id=Type.query.filter_by(name=type).first().id))
            db.session.commit()
     
        
    return True
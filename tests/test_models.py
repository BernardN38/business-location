import os
from unittest import TestCase
from sqlalchemy import exc, create_engine

from models import db, User, Place, PlaceAddress, Address, UserAddress
from logic import PotentialLocation

os.environ['DATABASE_URL'] = "postgresql:///capstone_test_db"



from app import app



class UserModelTestCase(TestCase):


    def setUp(self):
        db.drop_all()
        db.create_all()
        
        self.uid = 123456
        user = User.register('tester1', 'password123', 'testinguser@gmail.com')
        user.id = self.uid

        db.session.add(user)
        db.session.commit()


        self.user = User.query.get(self.uid)
        self.client = app.test_client()

    def tearDown(self):
        resp = super().tearDown()
        db.session.rollback()
        return resp
    
    def test_user_creation(self):
        user = User.query.get(self.uid)
        self.assertEqual(user.username, 'tester1')
        self.assertEqual(user.email, 'testinguser@gmail.com')

    def test_authentication(self):
        self.assertEqual(User.authenticate(self.user.username, 'password123') , self.user)
    
    def test_user_address(self):
        new_address = Address(id=1928,street='6002 jain lane', city='austin', state='texas')
        db.session.add(new_address)
        db.session.commit()
        user_address = UserAddress(address_id=1928, user_id=self.uid)
        db.session.add(user_address)
        db.session.commit()

        self.assertEqual(self.user.addresses[0], new_address)

    
    
    
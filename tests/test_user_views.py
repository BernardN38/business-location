import os
from unittest import TestCase

from models import db, connect_db, User
from flask_login import current_user, login_user

os.environ['DATABASE_URL'] = "postgresql:///capstone_test_db"
from app import app, login_user, current_user
db.create_all()
app.config['WTF_CSRF_ENABLED'] = False


class UserViewTestCase(TestCase):
    """Test views for messages."""

    def setUp(self):
        """Create test client, add sample data."""
        db.drop_all()
        db.create_all()

        self.client = app.test_client()

        self.testuser = User.register("tester123", "testuser654321", "test123@test.com",)
        self.testuser_id = 11223344
        self.testuser.id = self.testuser_id

        self.user_1 = User.register("John", "password223", "test1@test.com")
        self.user_1_id = 7784
        self.user_1.id = self.user_1_id

        self.user_2 = User.register("Alex", "password654", "test2@test.com")
        self.user_2_id = 884
        self.user_2.id = self.user_2_id



        self.user_3 = User.register("Henry", "password0981","test3@test.com")
        self.user_4 = User.register("William", "password8849", "test4@test.com")


        objects = [self.testuser, self.user_1, self.user_2, self.user_3, self.user_4]
        db.session.bulk_save_objects(objects)
        db.session.commit()

    def tearDown(self):
        resp = super().tearDown()
        db.session.rollback()
        return resp


    def test_user_profile_details(self):
        with self.client as client:
            login = client.post(f"/login", data={ 'username': 'tester123', 'password': 'testuser654321' })
            res = client.get(f"/profile")

            self.assertEqual(res.status_code, 200)

            self.assertIn("tester123", str(res.data))
            self.assertIn("test123@test.com", str(res.data))

    
    def test_user_login_page(self):
        with self.client as client:
            res = client.post(f"/login", data={ 'username': 'tester123', 'password': 'testuser654321' })

            self.assertEqual(res.status_code, 302)

            self.assertEqual(current_user.username, 'tester123')
            self.assertEqual(current_user.email, 'test123@test.com')

    def test_user_edit(self):
        with self.client as client:
            login = client.post("/login", data={ 'username': self.testuser.username, 'password': 'testuser654321' })
            res = client.post(f'/edit-profile/{self.testuser.username}', data={ 'username': 'tester0000', 'email': self.testuser.email, 'password': 'testuser654321',})
            res = client.get('/')


            self.assertEqual(res.status_code, 200)
            self.assertEqual(current_user.username, 'tester0000')
            self.assertIn("User Updated!", str(res.data))

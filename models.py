from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin
from flask_bcrypt import Bcrypt


db = SQLAlchemy()

bcrypt = Bcrypt()


def connect_db(app):
    db.app = app
    db.init_app(app) 

class User(UserMixin,db.Model):
    __tablename__= 'users'

    @classmethod
    def register(cls, username, password, email):
        hashed_pw = bcrypt.generate_password_hash(password)
        hashed_utf8 = hashed_pw.decode("utf8")

        return cls(username=username, password=hashed_utf8, email=email)

    @classmethod
    def authenticate(cls, username, password):
        user = User.query.filter_by(username=username).first()

        if user and bcrypt.check_password_hash(user.password, password):
            return user
        else:
            return False


    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )
    username = db.Column(
        db.String(30),
        nullable=False,
        unique=True
    )
    password = db.Column(
        db.Text,
        nullable=False
    )
    email = db.Column(
        db.Text,
        nullable=False
    )
    addresses = db.relationship('Address', secondary='user_addresses')

class Address(db.Model):
    __tablename__ = 'addresses'
    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )
    street = db.Column(
        db.Text,
        nullable=False
    )
    city = db.Column(
        db.Text,
        nullable=False
    )
    state = db.Column(
        db.Text,
        nullable=False
    )
    county = db.Column(
        db.Text
    )
    lat = db.Column(
        db.Float,
    )
    lng = db.Column(
        db.Float,
    )
    geo_code = db.Column(
        db.Integer,
    )
    places = db.relationship('Place', secondary='place_address_relation')


class UserAddress(db.Model):
    __tablename__ = 'user_addresses'

    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )
    user_id = db.Column(
        db.Integer,
        db.ForeignKey('users.id')
    )

    address_id = db.Column(
        db.Integer,
        db.ForeignKey('addresses.id')
    )


class Place(db.Model):
    __tablename__ = 'places'

    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )
    place_id = db.Column(
        db.Text,
        unique=True
    )
    name = db.Column(
        db.Text,
        nullable=False,
    )
    lat = db.Column(
        db.Float,
        nullable=False
    )

    lng = db.Column(
        db.Float,
        nullable=False
    )
    price_level = db.Column(
        db.Float,
        nullable=True
    )
    overall_rating = db.Column(
        db.Float,
        nullable=True,
    )

    ratings_count = db.Column(
        db.Integer,
        nullable=True
    )
    link = db.Column(
        db.Text,
        nullable=True
    )
    types = db.relationship('Type', secondary='place_types')

class PlaceAddress(db.Model):
    __tablename__ = 'place_address_relation'
    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )
    place_id = db.Column(
        db.Text,
        db.ForeignKey('places.place_id')
    )
    address_id = db.Column(
        db.Integer,
        db.ForeignKey('addresses.id')
    )


class Type(db.Model):
    __tablename__ = 'types'

    id = db.Column(
        db.Integer,
        primary_key=True,
        autoincrement=True
    )
    name = db.Column(
        db.Text,
        nullable=False
    )   

class PlaceType(db.Model):
    __tablename__ = 'place_types'

    id = db.Column(
        db.Integer,
        primary_key=True
    )
    place_id = db.Column(
        db.Text,
        db.ForeignKey('places.place_id')
    )

    type_id = db.Column(
        db.Integer,
        db.ForeignKey('types.id')
    )

class PopulationData(db.Model):
    __tablename__ = 'population_data'

    fips_code = db.Column(
        db.Integer,
        primary_key=True
    )
    object_id = db.Column(
        db.Integer
    )
    county_code = db.Column(
        db.Integer
    )
    name = db.Column(
        db.Text
    )
    state = db.Column(
        db.Text
    )
    population = db.Column(
        db.Integer
    )
    population_density = db.Column(
        db.Float
    )
    date_created = db.Column(
        db.Text
    )

class IncomeData(db.Model):
    __tablename__ = 'income_data'

    id = db.Column(
        db.Integer,
        primary_key=True
    )
    county = db.Column(
        db.String(50)
    )
    income = db.Column(
        db.Integer
    )
    
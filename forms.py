from flask_wtf import FlaskForm
from wtforms import StringField, FloatField, PasswordField
from wtforms.validators import Email, Required 
from wtforms.fields.html5 import EmailField
from models import db, User


class RequestForm(FlaskForm):
    street_address = StringField('Address',[Required()], render_kw={"placeholder": "Street Address"})
    city = StringField('City',[Required()], render_kw={"placeholder": "City"})
    state = StringField('State',[Required()], render_kw={"placeholder": "State"})

class UserForm(FlaskForm):
    username = StringField('Username',[Required()], render_kw={"placeholder": "Username"})
    email = EmailField('Email', [Email(), Required() ],render_kw={"placeholder": "E-mail"})
    password = PasswordField('Password',[Required()], render_kw={"placeholder": "Password"})


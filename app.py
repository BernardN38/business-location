from flask import Flask,request,render_template, redirect, session, flash, g, jsonify
from models import PlaceAddress, db, connect_db, User, Address
from forms import RequestForm, UserForm
from logic import PotentialLocation, TrendApi
from flask_login import LoginManager, login_user, logout_user, current_user, login_required
from state_dict import us_state_to_abbrev
import asyncio
import os 


app = Flask(__name__)
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = '/login'


app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DATABASE_URL', 'postgresql:///capstone_db').replace("postgres://", "postgresql://", 1)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = True
app.config['SECRET_KEY'] = os.environ.get('SECRET_KEY', 'testingkey')
app.config['DEBUG_TB_INTERCEPT_REDIRECTS'] = True

connect_db(app)


def connect_db(app):
    db.app = app
    db.init_app(app) 

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

@app.route('/')
def homepage():
    return render_template('home.html')

@app.route('/main')
@login_required
def request_submit():
    form = RequestForm()
    return render_template('request.html', form=form)

@app.route('/profile')
@login_required
def user_details():
    user = User.query.get(current_user.id)
    return render_template('user_profile.html', user=user)
    
@app.route('/edit-profile/<username>', methods=['GET', 'POST'])
@login_required
def edit_user(username):
    form = UserForm()
    user = User.query.get(current_user.id)
    form.username.label = 'Edit Username'
    form.email.label = 'Edit Username'
    form.password.label = 'Comfirm Password'
    if form.validate_on_submit():
        user.username = form.username.data
        user.email = form.email.data
        db.session.add(user)
        db.session.commit()
        flash('User Updated!')
        return redirect('/')
    return render_template('edit_profile.html', user=user, form=form)

@app.route('/addresses')
@login_required
def show_addresses():
    user = User.query.get(current_user.id)
    return render_template('user_addresses.html', addresses=user.addresses, username=user.username, email=user.email)

@app.route('/request', methods=['POST'])
@login_required
def handle_request():
    form = RequestForm()
    if form.validate_on_submit():
        new_location = PotentialLocation(form.street_address.data.lower(),form.city.data.lower(),form.state.data.lower(), user_id=current_user.id)
        new_location.get_places_nearby()
        return render_template('details.html', form=form, county=new_location.pop_data.name, population=new_location.pop_data.population, sub_type=new_location.sub_type, address_id=new_location.address.id, address = new_location.address)
    return redirect('/home')

@app.route('/request/<address_id>', methods=['GET'])
@login_required
def get_request(address_id):
    form = RequestForm()
    address = Address.query.get(address_id)
    new_location = PotentialLocation(address.street,address.city,address.state, user_id=current_user.id)
    return render_template('details.html', form=form, county=new_location.pop_data.name, population=new_location.pop_data.population, sub_type=new_location.sub_type, address=address)


@app.route('/more-info/<address_id>', methods=['GET'])
@login_required
def more_info(address_id):
    address = Address.query.get(address_id)
    new_location = PotentialLocation(address.street,address.city,address.state, user_id=current_user.id)

    geo = address.state
    state_abbrev = geo.upper()

    if len(geo) > 2:
        state_abbrev = us_state_to_abbrev[geo.capitalize()]


    competition_data = new_location.get_competiton_data()
    comp_count = round((len(address.places)/11), 2)
    return render_template('more_info.html',
    address_id=address_id,
      comp_count=comp_count,
      county=new_location.pop_data.name,
      state_abbrev= state_abbrev,
       income=new_location.income_data.income,
        pop_data=new_location.pop_data,
         sub_type=new_location.sub_type,
          saturation=competition_data['saturation'],
           places=address.places,
            average_rating=competition_data['average_rating'],
            average_price=competition_data['average_price'],
             search_intrest=None)


@app.route('/competition-data/<address_id>')
@login_required
def competition_data(address_id):
    places = Address.query.get(address_id).places
    return render_template('competition.html', places=places)

@app.route('/api/search-intrest')
def search_intrest():

    sub_type = request.args.get('sub_type').lower()
    geo = request.args.get('state')
    state_abbrev = geo.upper()

    if len(geo) > 2:
        state_abbrev = us_state_to_abbrev[geo.capitalize()]
        
    new_request = TrendApi(sub_type,state_abbrev)
    asyncio.run(new_request.main())
    return new_request.intrest_data


@app.route('/api/chart-data')
def chart_data():
    address_id = request.args.get('addressId')
    address = Address.query.get(address_id)
    location = PotentialLocation(address.street, address.city, address.state, current_user.id)
    comp_data = location.get_competiton_data()
    chart_data = {'density': location.pop_data.population_density, 'income':location.income_data.income,'rating':comp_data['average_rating'], 'population_per_competitor':comp_data['saturation']}
    return jsonify(chart_data)


@app.route('/signup', methods=['GET','POST']) 
def user_register():
    if current_user.is_authenticated:
        return redirect('/')
    form = UserForm()
    if form.validate_on_submit():
        new_user = User.register(username=form.username.data,password=form.password.data,email=form.email.data)
        db.session.add(new_user)
        db.session.commit()
        login_user(new_user)
        flash('Account Successfully Created')
        return redirect('/')

    return render_template('register.html', form=form)

@app.route('/login', methods=['GET','POST']) 
def user_login():
    if current_user.is_authenticated:
        return redirect('/')
    form = UserForm()
    del(form.email)
    if form.validate_on_submit():
        name = form.username.data
        pwd = form.password.data

        user = User.authenticate(name, pwd)

        if user:
            login_user(user)
            flash('Login Successful')
            return redirect("/")

        else:
            form.username.errors = ["Bad name/password"]

    return render_template("login.html", form=form)


@app.route('/logout')
def logout():
    logout_user()
    return redirect('/')






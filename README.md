# _API Comes e Bebes_ #
#### Ruby Version: 3.0.1 ####
#### Rails Version: 6.1.3.2 ####
## Gem ###
- Heroku: sudo apt-get install libpqxx-dev
## Issues ##

- Create Roles (Admin, Deliveryman, RestaurantOwner, Common User)
- Create Email Authentication

## API-Link: _comesandbebes.herokuapp.com_ ##

## User (Anonymous Role) ##
#### Create: ####
###### Method:  ######
- POST: _comesandbebes.herokuapp.com/user/register_
  ###### - Attributes: ######
  - name, cpf, password, password_confirmation, birthdate (date), address, telephone
#### Delete: ####
- DELETE: _comesandbebes.herokuapp.com/user/:id_
#### _Update:_ ####
- PUT: _comesandbebes.herokuapp.com/user/:id_
## Admin ##
#### Show All Users ####
- GET: _comesandbebes.herokuapp.com/admin/list_users_
## User (Login/Signup) ##
#### Login (email/password): ####
POST: _comesandbebes.herokuapp.com/auth/login_
#### Signup: ####
POST: _comesandbebes.herokuapp.com/auth/signup_

#### Create Restaurant Owner (Admin Role) ####
- POST: _comesandbebes.herokuapp.com/admin/register_rest_owner_
      Attributes:
  - restaurant_owner, name, email, cpf, password, password_confirmation, birthdate, adress, telephone
## Restaurant ##
#### Create Restaurant  (Restaurant Owner Role) ####
 - POST: _comesandbebes.herokuapp.com/restaurant_owner/create_restaurant_
   ###### - Attributes: ######
   - restaurant, name, logo, foodtype, openinghours, adress, cnpj, restaurant_owner_id
#### Show Restaurant Info ####
- GET: _comesandbebes.herokuapp.com/restaurant/:id_
#### Show All Restaurant Info to User  ####
- GET: _comesandbebes.herokuapp.com/user/list_restaurants_
#### Show Specific Restaurant Info  ####
- GET: _comesandbebes.herokuapp.com/restaurant/:id_
## Products ##
#### Create Product  ####
- POST: _comesandbebes.herokuapp.com/product_
   ###### - Attributes: ######
   - product, course_name, photo, description, price, portion, restaurant_id
#### Update Product  ####
- PUT: _comesandbebes.herokuapp.com/product/:id_
#### Delete Product  ####
- DELETE: _comesandbebes.herokuapp.com/product/:id_
#### Show Products  ####        
- GET: _comesandbebes.herokuapp.com/product/:id_
## Deliveryman ##
#### Create Deliveryman  ####
- POST: _comesandbebes.herokuapp.com/deliveryman/create_
  ###### - Attributes: ######
  - name, email, cpf, password, password_confirmation, birthdate, address, telephone, vehicle_type, driver_license.
#### Update Deliveryman  ####
- PUT: comesandbebes.herokuapp.com/deliveryman/:id
#### Delete Deliveryman  ####
- DELETE: comesandbebes.herokuapp.com/deliveryman/:id
## Cart ##
#### Create Cart  ####
- POST: comesandbebes.herokuapp.com/cart/create_cart
  
  ###### - Attributes: ######
  - user_id, restaurant_id, quantity: integer

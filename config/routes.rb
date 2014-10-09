Rails.application.routes.draw do


##### SWIMWEAR CONTROLLER #####

#Send user to path '/swimwear' which displays all available products user can select from
  root :to => 'swimwear#index'


##### ORDER CONTROLLER #####

#Show user product details and enable to customise parameters
  get '/order/:product_id' => 'order#new', as: :customise

#Write user's customisation data into order database
  post '/order/:product_id' => 'order#create', as: :orders

#Get checkout input from user and update order database
  get '/order/:id/checkout' => 'order#checkout', as: :checkout
  post '/order/:id' => 'order#update'

# Show confirmation page
  post '/complete' => 'order#complete'


##### SESSION CONTROLLER #####

# Prompt user to log in and enable to log out
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy' 


##### CUSTOMER CONTROLLER #####

#Show user registration form
  get '/register' => 'customers#new', as: :customers

# Write user's account data into database 
  post '/register' => 'customers#create'

# Show user account page
  get '/account' => 'customers#show', as: :account

# Show user account edit form
  get '/account/:id/edit' => 'customers#edit', as: :edit

# Write user's updated account data into database
  patch '/account/:id' => 'customers#update', as: :customer


end
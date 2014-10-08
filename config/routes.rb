Rails.application.routes.draw do

#Send user to path '/swimwear' which displays all available products user can select from
  root :to => 'swimwear#index'

#Show a list of all orders. 
  get 'order/all' => 'order#index'

#Show user product details and enable to customise parameters
  get '/order/:product_id' => 'order#new', as: :customise

#Write user's customisation data into order database
  post '/order/:product_id' => 'order#create', as: :orders

#Get checkout input from user and update order database
  get '/order/:id/checkout' => 'order#checkout', as: :checkout
  post '/order/:id' => 'order#update'

#Show order confirmation page to user
  get 'order/:id/confirmation' => 'order#confirmation'

# Prompt user to log in and enable to log out
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy' 

#Show user registration form
get '/register' => 'customers#new', as: :customers

# Write user's account data into database 
post '/register' => 'customers#create'

# Show user account page
get '/account/:id' => 'customers#show', as: :account

# Show user account edit form
get '/account/:id/edit' => 'customers#edit', as: :edit

# Write user's updated account data into database
patch '/account/:id' => 'customers#update', as: :customer

# Show confirmation page
post '/complete' => 'order#complete'

end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

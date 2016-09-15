Rails.application.routes.draw do
  resources :bookings
  resources :house_images
  resources :pets
  resources :listings
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'house_images#index'

  # getting the login form
  get '/login', to: 'session#new'
  # creating a session / logging in
  post '/session', to: 'session#create'
  # destroying a session / logging out
  delete '/session', to: 'session#destroy'

  get '/api/listings', to: 'api/listings#index'

end

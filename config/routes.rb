Rails.application.routes.draw do

  root 'site#index'

  get '/about', to: 'site#about'

  # routes for login
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  # routes for signup
  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'


  # routes for logout
  post 'session/destroy', to: 'sessions#sdestroy' 

  get "/logout" => "sessions#destroy" #TODO: DELETE THIS BEFORE PRODUCTION

  # # routes for uploading images
  # get '/explore', to: 'images#new'

  # post '/explore', to: 'images#create'

  resources :users

  resources :passwords

  resources :images

end

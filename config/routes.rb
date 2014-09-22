Rails.application.routes.draw do

  root 'site#index'

  get '/about', to: 'site#about'

  get '/login', to: 'session#new'

  post '/login', to: 'session#create'

  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  post 'session/destroy', to: 'session#destroy' 

  get "/logout" => "session#destroy" #TODO: DELETE THIS BEFORE PRODUCTION

  get '/explore', to: 'images#new'

  post '/explore', to: 'images#create'

  resources :users

  resources :passwords

  resources :images

end

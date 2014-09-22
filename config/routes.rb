Rails.application.routes.draw do
 
  root 'site#index'

  get '/about', to: 'site#about'

  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  resources :users

end

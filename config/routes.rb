Rails.application.routes.draw do
 
  get 'images/index'

  get 'images/new'

  get 'images/show'

  get 'images/edit'

  get 'images/create'

  get 'images/update'

  get 'images/destroy'

  root 'site#index'

  get '/about', to: 'site#about'

  get '/login', to: 'session#new'

  post '/login', to: 'session#create'

  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  post 'session/destroy', to: 'session#destroy' 

  delete '/users/:user_id/saved_msgs', to: 'saved_msgs#destroyAll'

  get "/logout" => "session#destroy" #TODO: DELETE THIS BEFORE PRODUCTION

  resources :users

end

Rails.application.routes.draw do
  
  root 'site#index'

  get '/about', to: 'site#about'

  resources :users

end

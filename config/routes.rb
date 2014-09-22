Rails.application.routes.draw do
  
  get 'tags/index'

  get 'tags/show'

  get 'tags/new'

  get 'tags/create'

  get 'tags/update'

  get 'tags/delete'

  root 'site#index'

  get '/about', to: 'site#about'

  resources :users

end

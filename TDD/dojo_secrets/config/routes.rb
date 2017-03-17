Rails.application.routes.draw do
  get 'secrets' => 'secrets#index'

  post 'secrets/create' => 'secrets#create'

  get 'secrets/:secret_id/like' => 'secrets#like'

  get 'secrets/:secret_id/unlike' => 'secrets#unlike'

  delete 'secrets/:secret_id/delete' => 'secrets#delete'

  get 'sessions/new' => 'users#index'

  post 'sessions/authenticate' => 'users#authenticate'

  delete '/sessions/:id' => 'users#log_out'

  get 'users/new' => 'users#new'

  post 'users/create' => 'users#create'

  get 'users/:id' => 'users#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

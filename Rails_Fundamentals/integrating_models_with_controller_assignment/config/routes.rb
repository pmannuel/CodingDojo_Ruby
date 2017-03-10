Rails.application.routes.draw do
  get 'users' => 'users#index'

  get 'users/new' => 'users#new'

  get 'users/total' => 'users#total'

  get 'users/:id' => 'users#show'

  get 'users/:id/edit' => 'users#edit'

  post 'users/create' => 'users#create'

  post 'users/:id/update' => 'users#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

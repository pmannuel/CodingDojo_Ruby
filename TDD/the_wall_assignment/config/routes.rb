Rails.application.routes.draw do
  resources :wall

  root :to => 'wall#index'

  post 'sign_in' => 'wall#sign_in'

  get 'dashboard' => 'wall#dashboard'

  post 'post_message' => 'wall#post_message'

  get 'log_out' => 'wall#log_out'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

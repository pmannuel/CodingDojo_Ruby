Rails.application.routes.draw do
  get '' => 'dashboard#index'

  get '/new/student/:dojo_id' => 'dashboard#new_student'

  post '/create/student/:dojo_id' => 'dashboard#create_student'

  get '/show/student/:id/:dojo_id' => 'dashboard#show_student'

  get '/edit/student/:id' => 'dashboard#edit_student'

  patch '/update/student/:id' => 'dashboard#update_student'

  delete '/destroy/student/:id/:dojo_id' => 'dashboard#destroy_student'

  get '/new' => 'dashboard#new'

  post '/create' => 'dashboard#create'

  get '/show/:id' => 'dashboard#show'

  get '/edit/:id' => 'dashboard#edit'

  patch '/update/:id' => 'dashboard#update'

  get '/destroy/:id' => 'dashboard#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

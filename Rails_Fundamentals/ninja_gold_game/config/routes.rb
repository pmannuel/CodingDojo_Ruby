Rails.application.routes.draw do
  get '' => 'game#index'

  get '/earn/:activity' => 'game#earn'

  get '/reset' => 'game#reset'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

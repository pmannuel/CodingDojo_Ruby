Rails.application.routes.draw do
  get 'clock/index' => 'clock#index'

  get 'survey' => 'clock#new'

  post 'survey/create' => 'clock#create'

  get 'survey/result' => 'clock#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

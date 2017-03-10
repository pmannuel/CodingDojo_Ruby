Rails.application.routes.draw do
  get '' => 'says#index'

  get 'hello' => 'says#hello'

  get 'says/hello' => 'says#say_hello'

  get 'says/hello/joe' => 'says#say_hello_joe'

  get 'says/hello/michael' => 'says#say_hello_michael'

  get 'says/times' => 'says#times'

  get 'says/times/restart' => 'says#times_restart'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

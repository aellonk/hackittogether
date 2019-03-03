Rails.application.routes.draw do
  resources :trips
  resources :users

  get '/go/:location' => 'trips#location'
  get '/welcome' => 'trips#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

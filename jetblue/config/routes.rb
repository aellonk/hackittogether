Rails.application.routes.draw do
  resources :destinations do 
  	  resources :trips
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/go/:destination' => 'trips#destination'
end

Rails.application.routes.draw do
  resources :pets
  resources :cars
  resources :addresses
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
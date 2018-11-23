Rails.application.routes.draw do

  devise_for :users
  # go to the static home page
  root 'static#home'

  resources :products
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

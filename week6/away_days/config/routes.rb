Rails.application.routes.draw do
  # get 'static/home'
  #
  # get '/ground', to: 'ground#index'

  root 'static#home'

  resources :grounds do
    resources :topics
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

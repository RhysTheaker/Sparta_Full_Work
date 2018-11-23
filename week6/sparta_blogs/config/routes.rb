Rails.application.routes.draw do
  # get 'posts/', to: 'posts#index'
  # get 'posts/new'
  # get 'posts/:id', to: 'posts#edit'
  # get 'posts/:id/edit', to: 'posts#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :comments, :except => [:index, :show, :new]
  end

  root "posts#index"
end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }
  get '/posts/index'
  get '/users/index'
  # Defines the root path route ("/")
  root 'users#index'
  # Defines the route for the users index page ("/users")
  resources :users, ony: [:index, :show] do
    # Defines the routel for the posts index page ("/users/:user_id/posts")
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:create, :destroy]
      resources :likes, only: [:create]
    end
  end
  namespace :api  do
    resources :users do
    resources :posts do
      resources :comments
      resources :likes
    end
  end
  end
end

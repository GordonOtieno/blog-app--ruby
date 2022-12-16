Rails.application.routes.draw do
  devise_for :users
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
end

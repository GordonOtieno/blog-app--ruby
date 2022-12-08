Rails.application.routes.draw do
  get '/posts/index'
  get '/users/index'

  root 'users#index'
  # Defines the route for the users index page ("/users")
  resources :users, ony: [:index, :show] do
    # Defines the routel for the posts index page ("/users/:user_id/posts")
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:create]
      resources :likes, only: [:create]
    end
  end
end

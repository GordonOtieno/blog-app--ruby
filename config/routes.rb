Rails.application.routes.draw do
  get '/posts/index'
  get '/users/index'

  root 'users#index'
  # Defines the route for the users index page ("/users")
  resources :users, only: [:index, :show] do
    # Defines the route for the posts index page ("/users/:user_id/posts")
    resources :posts, only: [:index, :show]
  end
end

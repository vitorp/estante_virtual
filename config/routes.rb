Rails.application.routes.draw do
  root to: "welcome#home", as: "login_form"

  resources :books, only: [:create, :new, :show]
  resources :reviews, only: [:new, :create, :destroy]

  post "/users", to: "users#create"
  get "/users", to: "users#index"
  get "/users/home", to: "users#home", as: "user_home"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/search", to: "users#search", as: "users_search"
  get "/users/:id", to: "users#show", as: "user"

  post "/login", to: "welcome#login", as: "login"
  get "/books/:id/setup-trade", to: "books#setup_trade", as: "setup_trade"
  get "/books/:id/remove-trade", to: "books#remove_trade", as: "remove_trade"

  get "/shelf", to: "books#shelf", as: "shelf"
end

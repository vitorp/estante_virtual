Rails.application.routes.draw do
  root to: "welcome#home", as: "login_form"

  resources :books, only: [:create, :new, :show]
  resources :reviews, only: [:new, :create, :destroy]

  post "/users", to: "user#create", as: "users"
  get "/users/home", to: "user#home", as: "user_home"
  get "/users/new", to: "user#new", as: "new_user"
  get "/users/:id", to: "user#show", as: "user"
  post "/login", to: "welcome#login", as: "login"

  get "/shelf", to: "books#shelf", as: "shelf"
end

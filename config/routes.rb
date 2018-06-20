Rails.application.routes.draw do
  root to: "welcome#home", as: "login_form"

  resources :reviews, only: [:new, :create, :destroy]

  scope :users do
    resources :users, only: [:index, :new, :show, :create]
    get "/home", to: "users#home", as: "users_home"
    get "/search", to: "users#search", as: "users_search"
  end

  post "/login", to: "welcome#login", as: "login"

  resources :books, only: [:create, :new, :show, :destroy]
  get "/books/:id/setup-trade", to: "books#setup_trade", as: "setup_trade"
  get "/books/:id/remove-trade", to: "books#remove_trade", as: "remove_trade"

  get "/shelf", to: "books#shelf", as: "shelf"
end

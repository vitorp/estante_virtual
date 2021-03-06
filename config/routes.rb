Rails.application.routes.draw do
  root to: "welcome#home", as: "login_form"

  scope :users do
    get "/home", to: "users#home", as: "users_home"
    get "/search", to: "users#search", as: "users_search"
  end
  resources :users, only: [:index, :new, :show, :create]

  post "/login", to: "welcome#login", as: "login"
  get "/logout", to: "welcome#logout", as: "logout"

  scope :books do
    get "/search", to: "books#search", as: "books_search"
    get "/list_search", to: "books#list_search", as: "books_list_search"
    get "/:id/setup-trade", to: "books#setup_trade", as: "setup_trade"
    get "/:id/remove-trade", to: "books#remove_trade", as: "remove_trade"
  end

  resources :books, only: [:create, :new, :show, :destroy, :index] do
    resources :reviews, shallow: true
  end

  get "/shelf", to: "books#shelf", as: "shelf"
end

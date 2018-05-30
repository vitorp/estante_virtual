Rails.application.routes.draw do
  resources :books, only: [:create, :new, :show]
  root to: "welcome#home"
end

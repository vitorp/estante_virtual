Rails.application.routes.draw do
  get 'books/new'
  get 'books/create'
  get 'books/show'
  root to: "welcome#home"
end

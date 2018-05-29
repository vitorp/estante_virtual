Rails.application.routes.draw do
  root to: "welcome#home"

  post "/users", to: "user#create", as: "users"
  get "/user/home", to: "user#home", as: "user_home"

end

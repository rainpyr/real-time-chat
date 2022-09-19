Rails.application.routes.draw do
  #Get the login token from Knock
  post "/user_token" => "user_token#create"
  #User routes
  get "/users/current" => "users#current"

  get "/signup", to: "registrations#new"
  post "/signup", to: "registrations#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/users/:id", to: "users#show", as: "profile"

  resources :chats, param: :slug
  resources :messages
  resources :players

  # Serve websocket cable requests in-process
  mount ActionCable.server => "/cable"
end

Rails.application.routes.draw do
  root "welcome#about"
  
  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create" 
  delete '/logout', to: "sessions#destroy"

  get 'users/:id', to: "users#show", as: "profile"

  resources :chats, param: :slug
  resources :messages

  get '/chats/:id' => 'chats#individual_chatroom'
  post '/chats' => 'chats#create' 
  
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end


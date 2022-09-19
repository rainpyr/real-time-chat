Rails.application.routes.draw do
  get 'teams/new'
  get 'teams/create'
  get 'teams/index'
  get 'teams/show'
  get 'teams/edit'
  get 'teams/update'
  get 'teams/destroy'
  get 'players/new'
  get 'players/create'
  get 'players/index'
  get 'players/show'
  get 'players/edit'
  get 'players/update'
  get 'players/destroy'
  root "welcome#about"
  
  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create" 
  delete '/logout', to: "sessions#destroy"

  get 'users/:id', to: "users#show", as: "profile"

  resources :chats, param: :slug
  resources :messages
  
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end


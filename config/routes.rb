Seasaltdev::Application.routes.draw do

  get "homes/show"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :members

  resources :posts
  resources :products

  resources :pages
  root to: "homes#show"
  resources :orders
  resources :users

end

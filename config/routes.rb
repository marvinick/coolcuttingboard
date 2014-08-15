Seasaltdev::Application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :members

  resources :posts
  resources :products

  resources :pages
  root to: "pages#index"
  resources :orders
  resources :users

end

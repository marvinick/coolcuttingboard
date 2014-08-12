Seasaltdev::Application.routes.draw do
  resources :posts
  resources :deliveries
  resources :line_items
  resources :carts
  get "listing/index"
  resources :products

  resources :pages
  root to: "posts#index"
  resources :orders
  resources :users

end

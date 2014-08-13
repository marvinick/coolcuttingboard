Seasaltdev::Application.routes.draw do
  resources :posts
  resources :products

  resources :pages
  root to: "posts#index"
  resources :orders
  resources :users

end

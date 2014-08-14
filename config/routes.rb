Seasaltdev::Application.routes.draw do
  resources :members

  resources :posts
  resources :products

  resources :pages
  root to: "pages#index"
  resources :orders
  resources :users

end

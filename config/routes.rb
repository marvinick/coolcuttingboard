Seasaltdev::Application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :members

  resources :posts
  resources :products

  resources :pages
  root to: "pages#index"
  resources :orders
  resources :users

end

Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  devise_for :users
  resources :orders
  resources :line_items
  resources :carts

  root 'store#index', as: 'store_index'

  resources :products
end

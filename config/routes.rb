Rails.application.routes.draw do
  get 'admin', to: 'admin#index'
  get 'rent_a_movie', to: 'store#index'

  devise_for :users
  resources :line_items
  resources :carts
  resources :orders

  #root 'store#index', as: 'rent_a_movie'
  root 'products#index', as: 'movies'
  resources :products do
    resources :comments
  end
end

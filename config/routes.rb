Rails.application.routes.draw do
  get 'admin', to: 'admin#index'
  get 'rent_a_movie', to: 'store#index'


  #root 'store#index', as: 'rent_a_movie'
  root 'products#index', as: 'movies'
  resources :products do
    resources :comments
    resources :second_comments, only: [:create, :destroy, :update]
  end
  devise_for :users
  resources :line_items
  resources :carts
  resources :orders
end

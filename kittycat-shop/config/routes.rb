Rails.application.routes.draw do

  devise_for :users

  resources :items, only: [:index, :show]
  root 'items#index'

  # Routes for carts management
  resources :carts, only: [:show]

  resources :cart_items, only: [:update, :destroy]

  # get 'profile', action: :show, controller: 'users'

end

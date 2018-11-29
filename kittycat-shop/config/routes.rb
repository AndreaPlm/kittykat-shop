Rails.application.routes.draw do

  devise_for :users

  resources :items, only: [:index, :show]
  root 'items#index'

  resources :carts, only: [:show]

  resources :cart_items, only: [:create, :update, :destroy]

  resources :charges, only: [:new, :create]


end

Rails.application.routes.draw do

  devise_for :users

  resources :items

  root 'items#index'

  resource :cart, only: [:show]

  resources :cart_items, only: [:create, :update, :destroy]

  resources :charges, only: [:new, :create]


end

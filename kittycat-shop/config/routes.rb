Rails.application.routes.draw do
  devise_for :users
  resources :items
  root 'items#index'
  resources :carts, only: [:show]
end

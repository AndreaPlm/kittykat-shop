Rails.application.routes.draw do

  devise_for :users

  resources :items

  root 'items#index'

  # Routes for carts management
  resources :carts, only: [:show]
  post 'cart/add_item', :action => "add_item_to_cart", :controller => 'carts'

  resources :cart_items, only: [:create, :update, :destroy]

  # get 'profile', action: :show, controller: 'users'

  resources :charges, only: [:new, :create]

end

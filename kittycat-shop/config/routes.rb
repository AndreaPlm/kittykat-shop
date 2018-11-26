Rails.application.routes.draw do
  devise_for :users
  resources :items, only: [:index, :show]
  root 'items#index'
end

Rails.application.routes.draw do
  root to: 'products#index'

  resources :products, only: [:index]
  resources :orders, only: [:show]
end

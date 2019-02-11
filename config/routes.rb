Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  resource :user, only: [:show, :edit, :update, :destroy]
  resources :products, only: [:index, :show, :destroy]
  resources :carts, only: [:index, :update, :destroy]
  resources :shippings, only: [:index, :create, :destroy]
  resources :orders, only: [:show, :update, :destroy]
  resources :order_products, only: [:create, :update, :destroy]


  namespace :admin do
  	resources :users, only: [:index, :show, :edit, :update, :destroy]
  	resources :products
  	resources :discs, only: [:create, :update, :destroy]
  	resources :songs, only: [:create, :update, :destroy]
  	resources :orders, only: [:index, :show, :update, :destroy]
  	resources :order_products, only: [:update, :destroy]
  end
end

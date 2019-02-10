Rails.application.routes.draw do
  get 'orders/show'
  get 'shippings/index'
  get 'carts/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :user
end

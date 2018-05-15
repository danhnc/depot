Rails.application.routes.draw do
  root 'store#index', as: 'store_index'
  resources :products
  resources :line_items
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

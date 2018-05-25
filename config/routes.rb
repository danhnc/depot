Rails.application.routes.draw do
  resources :orders
  root 'store#index', as: 'store_index'
  patch 'line_items/reduce_amount', to:'line_items#reduce_amount', as: 'reduce_amount_line_items'
  resources :products
  resources :line_items
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

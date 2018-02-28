Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [ :show, :new, :create, :destroy, :update, :edit]
  resources :products, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
    resources :offers, only: [:new, :create]
    resources :orders, only: [:new, :create, :edit, :update]
  end
  get "/products/:product_id/offers/:id", to: "offers#validate", as: "validate_offer"
  get "/products/:product_id/offers/:id/refused", to: "offers#refused", as: "refused_offer"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

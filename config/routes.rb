Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [ :show, :new, :create, :destroy, :update, :edit]
  resources :products, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
    resources :offers, only: [:new, :create]
    resources :orders, only: [:new, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  get "/dashboards", to: "dashboards#dashboard", as: "dashboards"
  get "/dashboards/:id", to: "dashboards#show", as: "dashboards_product"
  get "/dashboards/product/:product_id/offer/:id/validate", to: "dashboards#validate", as: "validate_offer"
  get "/dashboards/product/:product_id/offer/:id/refused", to: "dashboards#refused", as: "refused_offer"
end

Rails.application.routes.draw do
  resources :battery_banks
  resources :own_use_transformers
  resources :power_transformers
  resources :switches
  resources :subestations
  resources :regions
  resources :zones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

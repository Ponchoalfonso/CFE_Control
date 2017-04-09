Rails.application.routes.draw do
  resources :sbbanks
  resources :trtranformers
  resources :etnxtransformers
  resources :etnhtransformers
  resources :irtransformers
  resources :npfxtransformers
  resources :npfhtransformers
  resources :hnswitches
  resources :irswitches
  resources :subestations
  resources :regions
  resources :zones
  resources :pfswitches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

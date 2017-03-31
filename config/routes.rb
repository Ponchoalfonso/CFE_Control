Rails.application.routes.draw do
  resources :stationary_batteries_battery_banks
  resources :transformation_ratio_transfromers
  resources :neckalace_energized_bor_x_transformers
  resources :neckalace_energized_bor_h_transformers
  resources :insulation_resistence_transformers
  resources :powe_factor_nozzle_xes
  resources :powe_factor_nozzle_hs
  resources :hot_collar_switches
  resources :insulation_resistence_switches
  resources :power_factor_switches
  resources :battery_banks
  resources :own_use_transformers
  resources :power_transformers
  resources :switches
  resources :subestations
  resources :regions
  resources :zones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

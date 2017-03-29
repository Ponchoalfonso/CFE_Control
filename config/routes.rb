Rails.application.routes.draw do
  resources :battery_banks
  resources :transformation_ratio_transformers
  resources :necklace_energized_bor_h_transformers
  resources :necklace_energized_bor_x_transformers
  resources :insulation_resistance_transformers
  resources :power_factor_nozzle_x_transformers
  resources :power_factor_nozzle_h_transformers
  resources :hot_collar_switches
  resources :insulation_resistance_switches
  resources :power_factor_switches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

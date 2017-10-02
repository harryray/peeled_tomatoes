Rails.application.routes.draw do
  # Build a duck project
  resources :build_a_duck
  match "/build_a_duck/calculate" => "build_a_duck#calculate_quote", via: :post
  
  # Project List Project
  resources :projects
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"
  
end

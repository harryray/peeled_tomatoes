Rails.application.routes.draw do
  resources :italian_style
  resources :tesco_finest
  resources :sainsburys_own
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#hello"
end

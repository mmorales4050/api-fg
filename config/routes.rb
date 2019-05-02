Rails.application.routes.draw do
  resources :pets
  resources :monsters
  resources :miscs
  resources :characters
  resources :armors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

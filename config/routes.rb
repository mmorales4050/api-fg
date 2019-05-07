Rails.application.routes.draw do
  resources :character_armors
  resources :character_weapons
  resources :vendors
  resources :weapons
  resources :users
  resources :spells
  resources :shields
  resources :pets
  resources :monsters
  resources :miscs
  resources :characters
  resources :armors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

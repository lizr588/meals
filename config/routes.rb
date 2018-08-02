Rails.application.routes.draw do
  resources :store_maps
  resources :store_sections
  resources :ingredients
  resources :categories
  resources :recipes

  root 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

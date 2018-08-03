Rails.application.routes.draw do
  get 'main/index'
  get :search, controller: :main
  resources :store_maps
  resources :store_sections
  resources :ingredients
  resources :categories
  resources :recipes

  root 'recipes#index'

  post 'create_shopping' => 'recipes#shopping'
  get 'shopping' => 'recipes#shopping'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

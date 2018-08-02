Rails.application.routes.draw do
  get 'thisweek' => 'weekly_lists#this_week'
  get 'shoppinglist' => 'weekly_lists#shopping_list'
  get 'main/index'
  get :search, controller: :main
  resources :store_maps
  resources :store_sections
  resources :ingredients
  resources :categories
  resources :recipes

  root 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

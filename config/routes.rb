Rails.application.routes.draw do
  post 'thisweek' => 'weekly_lists#this_week'
  get 'mealplan' => 'weekly_lists#view_week'
  post 'shoppinglist' => 'weekly_lists#shopping_list'
  get 'shopping' => 'weekly_lists#shopping'
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

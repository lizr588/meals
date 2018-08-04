class ShoppingList < ApplicationRecord
  has_many :ingredients
  has_many :recipes
end

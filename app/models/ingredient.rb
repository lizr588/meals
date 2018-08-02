class Ingredient < ApplicationRecord
  has_many :ingr_recs
  has_many :recipes, through: :ingr_recs
end

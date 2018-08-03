class Ingredient < ApplicationRecord
  belongs_to :recipe, optional: true
  belongs_to :store_section, optional: true
  # has_many :ingr_recs
  # has_many :recipes, through: :ingr_recs
end

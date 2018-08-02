class Ingredient < ApplicationRecord
  belongs_to :store_section
  has_many :ingr_recs
  has_many :recipes, through: :ingr_recs
end

class Ingredient < ApplicationRecord
  belongs_to :store_section
  belongs_to :shopping_list, optional: true
  has_many :ingr_recs
  has_many :recipes, through: :ingr_recs
end

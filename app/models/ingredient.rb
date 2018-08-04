class Ingredient < ApplicationRecord
 # old
  belongs_to :recipe, optional: true
  belongs_to :store_section, optional: true

  belongs_to :shopping_list, optional: true
  # has_many :ingr_recs
  # has_many :recipes, through: :ingr_recs

  # belongs_to :recipe, optional: true
  # belongs_to :store_section, optional: true
  belongs_to :store_section
  # belongs_to :shopping_list, optional: true
  # has_many :ingr_recs
  # has_many :recipes, through: :ingr_recs
 # master
end

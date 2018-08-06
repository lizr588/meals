class Masteringr < ApplicationRecord
  has_many :ingredients
  belongs_to :store_section, optional: true
end

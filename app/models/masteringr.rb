class Masteringr < ApplicationRecord
  has_many :ingredients, inverse_of: :masteringr
  belongs_to :store_section, optional: true
end

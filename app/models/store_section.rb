class StoreSection < ApplicationRecord
  has_many :ingredients
  belongs_to :store_map
end

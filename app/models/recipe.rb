class Recipe < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :category
  has_many :ingredients
  # has_many :ingr_recs
  # has_many :ingredients, through: :ingr_recs

  accepts_nested_attributes_for :ingredients, :allow_destroy => true
  # :reject_if => lambda { |a| a[:ingredient].blank? },
end

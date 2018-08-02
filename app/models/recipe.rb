class Recipe < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :category

  has_many :ingr_recs
  has_many :recipes, through: :ingr_recs
end

class Recipe < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :category
  belongs_to :this_week, optional: true
  belongs_to :shopping_list, optional: true

  has_many :ingr_recs
  has_many :ingredients, through: :ingr_recs

  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:ingredient].blank? }, :allow_destroy => true
end

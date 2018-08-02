class Recipe < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  belongs_to :category
end

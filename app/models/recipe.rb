class Recipe < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
end

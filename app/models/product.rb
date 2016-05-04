class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category

  mount_uploader :avatar, AvatarUploader
end

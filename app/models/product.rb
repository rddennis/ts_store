class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category

  mount_uploader :avatar, AvatarUploader

  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  # # allows us to only accept file types that are images

end

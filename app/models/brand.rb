class Brand < ActiveRecord::Base
  has_many :products
  validates_uniqeness_of :name
end

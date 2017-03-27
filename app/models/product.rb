class Product < ApplicationRecord
  mount_uploader :image, ProductPicUploader
  has_and_belongs_to_many :orders
  has_and_belongs_to_many :categories
end

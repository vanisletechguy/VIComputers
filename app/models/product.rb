class Product < ApplicationRecord
  mount_uploader :image, ProductPicUploader
end

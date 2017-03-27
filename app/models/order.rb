class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :products
  #has_many :orders
end

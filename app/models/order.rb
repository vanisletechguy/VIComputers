class Order < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :products, optional: false
  #has_many :orders
end

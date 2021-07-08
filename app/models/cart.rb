class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :orders

end

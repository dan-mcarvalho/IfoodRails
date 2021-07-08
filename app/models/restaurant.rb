class Restaurant < ApplicationRecord
  belongs_to :restaurant_owner
  has_many :products
  has_many :rates

  validates :name, :logo, :foodtype, :openinghours, :address, :cnpj , presence: true
  validates :cnpj , uniqueness: true

end

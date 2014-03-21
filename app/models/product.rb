class Product < ActiveRecord::Base
  has_many :items
  has_many :carts, through: :items

  # validates :name, :price, :image, :avatar, :description, presence: true
end

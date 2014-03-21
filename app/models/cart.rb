class Cart < ActiveRecord::Base
  belongs_to :order
  has_many :items
  has_many :products, through: :items
end
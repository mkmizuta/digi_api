class Order < ActiveRecord::Base
  has_one :cart
end
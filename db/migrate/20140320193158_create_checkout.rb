class CreateCheckout < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :name
      t.string :email
      t.string :cc
      t.string :cvv
      t.string :expiration
      t.string :zipcode
      t.integer :cart_id
    end
  end
end

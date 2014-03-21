class CreateItem < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :product_id
      t.integer :cart_id
      t.integer :current_price
      t.integer :quantity
    end
  end
end

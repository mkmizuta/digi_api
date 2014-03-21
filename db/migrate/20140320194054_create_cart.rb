class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :checkout_id
    end
  end
end

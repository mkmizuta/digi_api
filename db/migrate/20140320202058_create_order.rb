class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :paid
      t.integer :checkout_id
    end
  end
end

class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :name, :string
    add_column :orders, :email, :string
    add_column :orders, :cc, :string
    add_column :orders, :cvv, :string
    add_column :orders, :expiration, :string
    add_column :orders, :zipcode, :string
  end
end

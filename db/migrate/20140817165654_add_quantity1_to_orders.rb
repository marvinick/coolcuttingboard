class AddQuantity1ToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :quantity1, :integer
    add_column :orders, :quantity2, :integer
    add_column :orders, :quantity3, :integer
    add_column :orders, :quantity4, :integer
    add_column :orders, :quantity5, :integer
    add_column :orders, :quantity6, :integer
    add_column :orders, :quantity7, :integer
    add_column :orders, :quantity8, :integer
    add_column :orders, :quantity9, :integer
    add_column :orders, :quantity10, :integer
  end
end

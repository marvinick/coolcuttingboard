class AddProduct1ToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :product1, :string
    add_column :orders, :product2, :string
    add_column :orders, :product3, :string
    add_column :orders, :product4, :string
    add_column :orders, :product5, :string
    add_column :orders, :product6, :string
    add_column :orders, :product7, :string
    add_column :orders, :product8, :string
    add_column :orders, :product9, :string
    add_column :orders, :product10, :string
  end
end

class AddUnit1ToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :unit1, :string
    add_column :orders, :unit2, :string
    add_column :orders, :unit3, :string
    add_column :orders, :unit4, :string
    add_column :orders, :unit5, :string
    add_column :orders, :unit6, :string
    add_column :orders, :unit7, :string
    add_column :orders, :unit8, :string
    add_column :orders, :unit9, :string
    add_column :orders, :unit10, :string
  end
end

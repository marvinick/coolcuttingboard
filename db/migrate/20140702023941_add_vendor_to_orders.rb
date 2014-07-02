class AddVendorToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :vendor, :string
  end
end

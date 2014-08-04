class AddDeliveryIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :delivery_id, :integer
  end
end

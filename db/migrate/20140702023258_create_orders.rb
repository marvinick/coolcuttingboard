class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name, :unit
      t.integer :quantity
      t.timestamps
    end
  end
end

class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :name
      t.text :address
      t.string :email

      t.timestamps
    end
  end
end

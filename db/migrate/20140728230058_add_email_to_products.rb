class AddEmailToProducts < ActiveRecord::Migration
  def change
    add_column :products, :email, :string
  end
end

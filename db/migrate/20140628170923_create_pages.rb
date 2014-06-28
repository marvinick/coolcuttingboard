class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, :description
      t.timestamps
    end
  end
end

class CreateItem < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :price
      t.integer :inventory
      t.timestamps
    end
  end
end

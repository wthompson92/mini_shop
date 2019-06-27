class AddMerchantIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :merchant_id, :string
    add_column :items, :integer, :string
  end
end

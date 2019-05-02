class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.integer :id
      t.string :ShopName
      t.string :VendorName
      t.string :VendorFile
      t.integer :ShopRaceId
      t.integer :ShopGuildId
      t.integer :ShopActive

      t.timestamps
    end
  end
end

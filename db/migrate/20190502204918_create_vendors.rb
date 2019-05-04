class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :ShopName
      t.string :name
      t.string :VendorFile
      t.integer :ShopRaceId
      t.integer :ShopGuildId
      t.integer :ShopActive

      t.timestamps
    end
  end
end

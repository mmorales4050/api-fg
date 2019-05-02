class CreateSpells < ActiveRecord::Migration[5.1]
  def change
    create_table :spells do |t|
      t.integer :ItemId
      t.string :ItemName
      t.string :ItemDesc
      t.string :ItemElement
      t.string :ItemType
      t.integer :Cost
      t.integer :Price
      t.integer :SellPrice
      t.integer :Dropable
      t.integer :PowerLevel
      t.integer :ItemLevel
      t.integer :BuyType
      t.integer :Buyable
      t.integer :HoursOwned
      t.integer :Extra

      t.timestamps
    end
  end
end

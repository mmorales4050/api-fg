class CreateShields < ActiveRecord::Migration[5.1]
  def change
    create_table :shields do |t|
      t.integer :ItemId
      t.string :ItemName
      t.string :ItemDesc
      t.string :ItemElement
      t.string :ItemType
      t.integer :Price
      t.integer :SellPrice
      t.integer :Dropable
      t.integer :PowerLevel
      t.integer :ItemLevel
      t.integer :BuyType
      t.integer :Buyable
      t.integer :HoursOwned
      t.string :Extra
      t.integer :ArmorFire
      t.integer :ArmorWater
      t.integer :ArmorIce
      t.integer :ArmorWind
      t.integer :ArmorEarth
      t.integer :ArmorEnergy
      t.integer :ArmorLight
      t.integer :ArmorDarkness
      t.integer :ArmorMelee
      t.integer :ArmorRanged
      t.integer :ArmorMagic

      t.timestamps
    end
  end
end

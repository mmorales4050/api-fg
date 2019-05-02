class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.integer :ItemId
      t.string :ItemName
      t.string :ItemDesc
      t.string :ItemElement
      t.string :ItemType
      t.integer :ItemPowerLevel
      t.integer :ItemLevel
      t.integer :ItemPowerExp
      t.integer :Dropable
      t.integer :BuyType
      t.integer :HoursOwned
      t.integer :BaseDamage
      t.integer :RandomDamage
      t.integer :ItemBonus
      t.integer :Buyable
      t.string :Extra
      t.integer :Price
      t.integer :SellPrice

      t.timestamps
    end
  end
end

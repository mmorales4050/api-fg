class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.integer :ItemId
      t.string :ItemName
      t.string :ItemDesc
      t.string :ItemElement
      t.string :ItemType
      t.integer :Charisma
      t.integer :Price
      t.integer :SellPrice
      t.integer :Dropable
      t.integer :PowerLevel
      t.integer :ItemLevel
      t.integer :BuyType
      t.integer :Buyable
      t.integer :HoursOwned
      t.string :Extra
      t.integer :BaseHP
      t.integer :BaseDamage
      t.integer :RandomDamage
      t.integer :BonusToHit

      t.timestamps
    end
  end
end

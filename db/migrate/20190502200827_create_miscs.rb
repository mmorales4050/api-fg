class CreateMiscs < ActiveRecord::Migration[5.1]
  def change
    create_table :miscs do |t|
      t.integer :ItemId
      t.string :name
      t.string :ItemDesc
      t.string :ItemElement
      t.string :ItemType
      t.integer :CostMP
      t.integer :CostSP
      t.integer :Price
      t.integer :SellPrice
      t.integer :Dropable
      t.integer :PowerLevel
      t.integer :ItemLevel
      t.integer :BuyType
      t.integer :Buyable
      t.integer :HoursOwned
      t.string :Extra

      t.timestamps
    end
  end
end

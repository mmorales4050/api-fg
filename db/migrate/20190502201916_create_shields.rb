class CreateShields < ActiveRecord::Migration[5.1]
  def change
    create_table :shields do |t|
      t.string :name
      t.string :item_desc
      t.string :item_element
      t.string :item_type
      t.integer :price
      t.integer :sell_price
      t.integer :dropable
      t.integer :power_level
      t.integer :item_level
      t.integer :buy_type
      t.integer :buyable
      t.integer :hours_owned
      t.string :extra
      t.integer :armor_fire
      t.integer :armor_water
      t.integer :armor_ice
      t.integer :armor_wind
      t.integer :armor_earth
      t.integer :armor_energy
      t.integer :armor_light
      t.integer :armor_darkness
      t.integer :armor_melee
      t.integer :armor_ranged
      t.integer :armor_magic

      t.timestamps
    end
  end
end

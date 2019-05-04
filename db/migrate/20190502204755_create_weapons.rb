class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :item_desc
      t.string :item_element
      t.string :item_type
      t.integer :item_power_level
      t.integer :item_level
      t.integer :item_power_exp
      t.integer :dropable
      t.integer :buy_type
      t.integer :hours_owned
      t.integer :base_damage
      t.integer :random_damage
      t.integer :item_bonus
      t.integer :buyable
      t.string :extra
      t.integer :price
      t.integer :sell_price

      t.timestamps
    end
  end
end

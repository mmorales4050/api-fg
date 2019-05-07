class CreateCharacterArmors < ActiveRecord::Migration[5.1]
  def change
    create_table :character_armors do |t|
      t.integer :character_id
      t.integer :armor_id

      t.timestamps
    end
  end
end

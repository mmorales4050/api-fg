class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :monster_desc
      t.integer :level
      t.integer :hp
      t.integer :mp
      t.integer :sp
      t.integer :gold
      t.integer :exp
      t.integer :stre
      t.integer :dext
      t.integer :inte
      t.integer :char
      t.integer :endu
      t.integer :luck
      t.string :extra_data
      t.string :elements
      t.string :types
      t.integer :base_damage
      t.integer :rand_damage
      t.integer :bonus_to_hit
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
      t.string :body_file_name
      t.string :head_file_name
      t.integer :background_id
      t.string :background_file_name
      t.integer :max_pack_size
      t.string :weapon_element
      t.string :weapon_type
      t.string :background_terrains

      t.timestamps
    end
  end
end

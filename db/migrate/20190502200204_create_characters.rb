class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.integer :exp
      t.string :username
      t.integer :type
      t.integer :face
      t.string :facecolors
      t.string :klass
      t.string :chartype
      t.integer :gold
      t.integer :tokens
      t.integer :strength
      t.integer :dexterity
      t.integer :intelligence
      t.integer :charm
      t.integer :endurance
      t.integer :luck
      t.string :race
      t.string :subrace
      t.string :clan
      t.string :createdday
      t.string :createddate
      t.string :playedday
      t.string :playeddate
      t.string :armorcolors
      t.integer :staff
      t.integer :banned
      t.integer :extraweaponSlot
      t.integer :extraarmorSlot
      t.integer :extrashieldSlot
      t.integer :extraspellSlot
      t.integer :extrapetSlot
      t.integer :extramiscSlot
      t.integer :extrahouseSlot
      t.integer :wins
      t.integer :deaths

      t.timestamps
    end
  end
end

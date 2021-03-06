class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.integer :exp
      t.integer :exp_needed
      t.string :username
      t.integer :type
      t.integer :face
      t.string :facecolors
      t.string :klass
      t.string :chartype
      t.integer :gold
      t.integer :tokens
      t.integer :stre
      t.integer :dext
      t.integer :inte
      t.integer :char
      t.integer :endu
      t.integer :luck
      t.string :race
      t.string :sub_race
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

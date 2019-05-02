class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.integer :MonsterId
      t.string :MonsterName
      t.string :MonsterDesc
      t.integer :Level
      t.integer :HP
      t.integer :MP
      t.integer :SP
      t.integer :Gold
      t.integer :Exp
      t.integer :Stre
      t.integer :Dext
      t.integer :Inte
      t.integer :Char
      t.integer :Endu
      t.integer :Luck
      t.string :ExtraData
      t.string :Elements
      t.string :Types
      t.integer :BaseDamage
      t.integer :RandDamage
      t.integer :BonusToHit
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
      t.string :BodyFileName
      t.string :HeadFileName
      t.integer :BackgroundId
      t.string :BackgroundFileName
      t.integer :MaxPackSize
      t.string :WeaponElement
      t.string :WeaponType
      t.string :BackgroundTerrains

      t.timestamps
    end
  end
end

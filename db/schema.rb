# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190502204918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", force: :cascade do |t|
    t.integer "ItemId"
    t.string "ItemName"
    t.string "ItemDesc"
    t.string "ItemElement"
    t.string "ItemType"
    t.integer "Price"
    t.integer "SellPrice"
    t.integer "Dropable"
    t.integer "PowerLevel"
    t.integer "ItemLevel"
    t.integer "BuyType"
    t.integer "Buyable"
    t.integer "HoursOwned"
    t.string "Extra"
    t.integer "ArmorFire"
    t.integer "ArmorWater"
    t.integer "ArmorIce"
    t.integer "ArmorWind"
    t.integer "ArmorEarth"
    t.integer "ArmorEnergy"
    t.integer "ArmorLight"
    t.integer "ArmorDarkness"
    t.integer "ArmorMelee"
    t.integer "ArmorRanged"
    t.integer "ArmorMagic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "charname"
    t.integer "level"
    t.integer "exp"
    t.string "username"
    t.integer "type"
    t.integer "face"
    t.string "facecolors"
    t.string "class"
    t.string "chartype"
    t.integer "gold"
    t.integer "tokens"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "intelligence"
    t.integer "charm"
    t.integer "endurance"
    t.integer "luck"
    t.string "race"
    t.string "subrace"
    t.string "clan"
    t.string "createdday"
    t.string "createddate"
    t.string "playedday"
    t.string "playeddate"
    t.string "armorcolors"
    t.integer "staff"
    t.integer "banned"
    t.integer "extraweaponSlot"
    t.integer "extraarmorSlot"
    t.integer "extrashieldSlot"
    t.integer "extraspellSlot"
    t.integer "extrapetSlot"
    t.integer "extramiscSlot"
    t.integer "extrahouseSlot"
    t.integer "wins"
    t.integer "deaths"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "miscs", force: :cascade do |t|
    t.integer "ItemId"
    t.string "ItemName"
    t.string "ItemDesc"
    t.string "ItemElement"
    t.string "ItemType"
    t.integer "CostMP"
    t.integer "CostSP"
    t.integer "Price"
    t.integer "SellPrice"
    t.integer "Dropable"
    t.integer "PowerLevel"
    t.integer "ItemLevel"
    t.integer "BuyType"
    t.integer "Buyable"
    t.integer "HoursOwned"
    t.string "Extra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.integer "MonsterId"
    t.string "MonsterName"
    t.string "MonsterDesc"
    t.integer "Level"
    t.integer "HP"
    t.integer "MP"
    t.integer "SP"
    t.integer "Gold"
    t.integer "Exp"
    t.integer "Stre"
    t.integer "Dext"
    t.integer "Inte"
    t.integer "Char"
    t.integer "Endu"
    t.integer "Luck"
    t.string "ExtraData"
    t.string "Elements"
    t.string "Types"
    t.integer "BaseDamage"
    t.integer "RandDamage"
    t.integer "BonusToHit"
    t.integer "ArmorFire"
    t.integer "ArmorWater"
    t.integer "ArmorIce"
    t.integer "ArmorWind"
    t.integer "ArmorEarth"
    t.integer "ArmorEnergy"
    t.integer "ArmorLight"
    t.integer "ArmorDarkness"
    t.integer "ArmorMelee"
    t.integer "ArmorRanged"
    t.integer "ArmorMagic"
    t.string "BodyFileName"
    t.string "HeadFileName"
    t.integer "BackgroundId"
    t.string "BackgroundFileName"
    t.integer "MaxPackSize"
    t.string "WeaponElement"
    t.string "WeaponType"
    t.string "BackgroundTerrains"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.integer "ItemId"
    t.string "ItemName"
    t.string "ItemDesc"
    t.string "ItemElement"
    t.string "ItemType"
    t.integer "Charisma"
    t.integer "Price"
    t.integer "SellPrice"
    t.integer "Dropable"
    t.integer "PowerLevel"
    t.integer "ItemLevel"
    t.integer "BuyType"
    t.integer "Buyable"
    t.integer "HoursOwned"
    t.string "Extra"
    t.integer "BaseHP"
    t.integer "BaseDamage"
    t.integer "RandomDamage"
    t.integer "BonusToHit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shields", force: :cascade do |t|
    t.integer "ItemId"
    t.string "ItemName"
    t.string "ItemDesc"
    t.string "ItemElement"
    t.string "ItemType"
    t.integer "Price"
    t.integer "SellPrice"
    t.integer "Dropable"
    t.integer "PowerLevel"
    t.integer "ItemLevel"
    t.integer "BuyType"
    t.integer "Buyable"
    t.integer "HoursOwned"
    t.string "Extra"
    t.integer "ArmorFire"
    t.integer "ArmorWater"
    t.integer "ArmorIce"
    t.integer "ArmorWind"
    t.integer "ArmorEarth"
    t.integer "ArmorEnergy"
    t.integer "ArmorLight"
    t.integer "ArmorDarkness"
    t.integer "ArmorMelee"
    t.integer "ArmorRanged"
    t.integer "ArmorMagic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spells", force: :cascade do |t|
    t.integer "ItemId"
    t.string "ItemName"
    t.string "ItemDesc"
    t.string "ItemElement"
    t.string "ItemType"
    t.integer "Cost"
    t.integer "Price"
    t.integer "SellPrice"
    t.integer "Dropable"
    t.integer "PowerLevel"
    t.integer "ItemLevel"
    t.integer "BuyType"
    t.integer "Buyable"
    t.integer "HoursOwned"
    t.integer "Extra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.integer "secretcode"
    t.integer "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "ShopName"
    t.string "VendorName"
    t.string "VendorFile"
    t.integer "ShopRaceId"
    t.integer "ShopGuildId"
    t.integer "ShopActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.integer "ItemId"
    t.string "ItemName"
    t.string "ItemDesc"
    t.string "ItemElement"
    t.string "ItemType"
    t.integer "ItemPowerLevel"
    t.integer "ItemLevel"
    t.integer "ItemPowerExp"
    t.integer "Dropable"
    t.integer "BuyType"
    t.integer "HoursOwned"
    t.integer "BaseDamage"
    t.integer "RandomDamage"
    t.integer "ItemBonus"
    t.integer "Buyable"
    t.string "Extra"
    t.integer "Price"
    t.integer "SellPrice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

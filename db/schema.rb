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
    t.string "name"
    t.string "item_desc"
    t.string "item_element"
    t.string "item_type"
    t.integer "price"
    t.integer "sell_price"
    t.integer "dropable"
    t.integer "power_level"
    t.integer "item_level"
    t.integer "buy_type"
    t.integer "buyable"
    t.integer "hours_owned"
    t.string "extra"
    t.integer "armor_fire"
    t.integer "armor_water"
    t.integer "armor_ice"
    t.integer "armor_wind"
    t.integer "armor_earth"
    t.integer "armor_energy"
    t.integer "armor_light"
    t.integer "armor_darkness"
    t.integer "armor_melee"
    t.integer "armor_ranged"
    t.integer "armor_magic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "exp"
    t.string "username"
    t.integer "type"
    t.integer "face"
    t.string "facecolors"
    t.string "klass"
    t.string "chartype"
    t.integer "gold"
    t.integer "tokens"
    t.integer "stre"
    t.integer "dext"
    t.integer "inte"
    t.integer "char"
    t.integer "endu"
    t.integer "luck"
    t.string "race"
    t.string "sub_race"
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
    t.string "name"
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
    t.string "name"
    t.string "monster_desc"
    t.integer "level"
    t.integer "hp"
    t.integer "mp"
    t.integer "sp"
    t.integer "gold"
    t.integer "exp"
    t.integer "stre"
    t.integer "dext"
    t.integer "inte"
    t.integer "char"
    t.integer "endu"
    t.integer "luck"
    t.string "extra_data"
    t.string "elements"
    t.string "types"
    t.integer "base_damage"
    t.integer "rand_damage"
    t.integer "bonus_to_hit"
    t.integer "armor_fire"
    t.integer "armor_water"
    t.integer "armor_ice"
    t.integer "armor_wind"
    t.integer "armor_earth"
    t.integer "armor_energy"
    t.integer "armor_light"
    t.integer "armor_darkness"
    t.integer "armor_melee"
    t.integer "armor_ranged"
    t.integer "armor_magic"
    t.string "body_file_name"
    t.string "head_file_name"
    t.integer "background_id"
    t.string "background_file_name"
    t.integer "max_pack_size"
    t.string "weapon_element"
    t.string "weapon_type"
    t.string "background_terrains"
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
    t.string "name"
    t.string "item_desc"
    t.string "item_element"
    t.string "item_type"
    t.integer "price"
    t.integer "sell_price"
    t.integer "dropable"
    t.integer "power_level"
    t.integer "item_level"
    t.integer "buy_type"
    t.integer "buyable"
    t.integer "hours_owned"
    t.string "extra"
    t.integer "armor_fire"
    t.integer "armor_water"
    t.integer "armor_ice"
    t.integer "armor_wind"
    t.integer "armor_earth"
    t.integer "armor_energy"
    t.integer "armor_light"
    t.integer "armor_darkness"
    t.integer "armor_melee"
    t.integer "armor_ranged"
    t.integer "armor_magic"
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
    t.string "name"
    t.string "password"
    t.string "email"
    t.integer "secretcode"
    t.integer "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "ShopName"
    t.string "name"
    t.string "VendorFile"
    t.integer "ShopRaceId"
    t.integer "ShopGuildId"
    t.integer "ShopActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "item_desc"
    t.string "item_element"
    t.string "item_type"
    t.integer "item_power_level"
    t.integer "item_level"
    t.integer "item_power_exp"
    t.integer "dropable"
    t.integer "buy_type"
    t.integer "hours_owned"
    t.integer "base_damage"
    t.integer "random_damage"
    t.integer "item_bonus"
    t.integer "buyable"
    t.string "extra"
    t.integer "price"
    t.integer "sell_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

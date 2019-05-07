# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
Armor.destroy_all
Monster.destroy_all
Weapon.destroy_all
Shield.destroy_all
CharacterWeapon.destroy_all
CharacterArmor.destroy_all

Character.new(name: "Character1", level: 1, exp: 0,  exp_needed: 110, klass: "Adventurer", race: "Human", sub_race: "None", clan: "None", stre: 0, dext: 0, inte: 0, endu: 0, char: 0, luck: 0, gold: 0).save(validate: false)

#Armor.new(name: "Steel Plate", armor_earth: -10, item_desc: "Basic steel armor").save(validate: false)

#Monster.new(name: "Creature", monster_desc: "A strange looking creature", base_damage: 1, health: 50, armor_earth: 0).save(validate: false)

Weapon.new(base_damage: 1, random_damage: 18, name: "Long Sword", item_desc: "A sturdy blade with a curved handle", item_element: "Earth", item_type: "Melee", extra: "http://media.artix.com/encyc/AQ/AQPedia2/Weapons/Long_Sword.jpg", item_level: 0, price: 2, sell_price: 0).save(validate: false)

CharacterWeapon.create(character_id: Character.all[0].id, weapon_id: Weapon.all[0].id)
# Create Monsters
require 'nokogiri'
require 'open-uri'

def create_monsters
  damage_table = {0 => [3, 5, 0], 1 => [3, 5, 0], 3 => [4, 5, 0], 4 => [4,5,1], 5 => [4,5,1], 6 => [3,9,1], 7 => [7,1,1], 9 => [5,8,2], 10 => [4,9,1], 12 => [5,8,2], 13 => [5,8,2], 15 => [5,10,2], 16 => [5,11,2], 18 => [7,8,2], 20 => [6,11,3], 25 => [6,13,3], 30 => [7,13,4], 35 => [4,21,4], 36 => [7,15,5], 38 => [7,16,5], 40 => [8,15,5], 60 => [9,19,8], 63 => [13,12,8], 64 => [7,25,8], 65 => [10,19,8], 68 => [16,8,9], 69 => [10,20,9], 70 => [18,5,9], 75 => [13,16,9], 80 => [7,30,10], 85 => [11,23,11], 90 => [12,23,11], 95 => [19,10,12]}

  base_url = "http://zardwarsrevival.nfshost.com/encyclopedia.php"
  url = "http://zardwarsrevival.nfshost.com/encyclopedia.php?e=enemies"
  monster_index = Nokogiri::HTML(open(url))

  monster_index.css("li").each do |element|
    show_page_url = (base_url + element.css("a").map { |link| link['href'] }.join(""))
    show_page = Nokogiri::HTML(open(show_page_url))
    monster_name = show_page.css("#main").css(".pagehead").inner_text
    show_page.css("#main").css(".pagehead").each do |item|
      monster_details = item.next_element.content
      monster_url = "http://zardwarsrevival.nfshost.com/" + item.next_element.next_element["src"].to_s
      monster_attribute = item.next_element.next_element.next_element.text.split(" ")
      monster_level = monster_attribute[2].to_i
      monster_exp = monster_attribute[4].to_i
      monster_gold = monster_attribute[6].to_i

      monster_hp = item.next_element.next_element.next_element.css(".HP").inner_text.split("-")[0]
      monster_mp = item.next_element.next_element.next_element.css(".MP").inner_text.split("-")[0]
      monster_stats = item.next_element.next_element.next_element.next_element.text.split(" ")

      str = monster_stats[2]
      dex = monster_stats[4]
      int = monster_stats[6]
      endurance = monster_stats[8]
      charisma = monster_stats[10]
      luck = monster_stats[12]

      monster_defense = item.next_element.next_element.next_element.next_element.next_element.text.split(" ")

      melee_def = monster_defense[2]
      ranged_def = monster_defense[4]
      magic_def = monster_defense[6]

      monster_elements = item.next_element.next_element.next_element.next_element.next_element.next_element.text.split(" ")

      fire = monster_elements[2].chomp("%").to_i - 100
      water = monster_elements[4].chomp("%").to_i - 100
      wind = monster_elements[6].chomp("%").to_i - 100
      ice = monster_elements[8].chomp("%").to_i - 100
      earth = monster_elements[10].chomp("%").to_i - 100
      energy = monster_elements[12].chomp("%").to_i - 100
      light = monster_elements[14].chomp("%").to_i - 100
      darkness = monster_elements[16].chomp("%").to_i - 100


      Monster.new(name: monster_name, monster_desc: monster_details, level: monster_level, hp: monster_hp, mp: monster_mp, gold: monster_gold, exp: monster_exp, stre: str, dext: dex, inte: int, endu: endurance, char: charisma, luck: luck, armor_melee: melee_def, armor_ranged: ranged_def, armor_magic: magic_def, armor_fire: fire, armor_water: water, armor_wind: wind, armor_ice: ice, armor_earth: earth, armor_energy: energy, armor_light: light, armor_darkness: darkness, extra_data: monster_url, base_damage: damage_table[monster_level][0], random_damage: damage_table[monster_level][1], bonus_to_hit: damage_table[monster_level][2]).save(validate: false)
    end
  end
end

create_monsters()

def get_items(url)

  base_url = "http://zardwarsrevival.nfshost.com/encyclopedia.php"
  monster_index = Nokogiri::HTML(open(url))

  monster_index.css("li").each do |element|
    show_page_url = (base_url + element.css("a").map { |link| link['href'] }.join(""))
    show_page = Nokogiri::HTML(open(show_page_url))
    name = show_page.css("#main").css(".pagehead").inner_text


    show_page.css("#main").css(".pagehead").each do |item|
      item_details = item.next_element.content
      item_url = "http://zardwarsrevival.nfshost.com/" + item.next_element.next_element["src"].to_s
      monster_attribute = item.next_element.next_element.next_element.text.split(" ")
      item_level = monster_attribute[2]
      item_element = monster_attribute[4]
      item_cost = monster_attribute[6]
      item_sell_cost = monster_attribute[8]

      monster_stats = item.next_element.next_element.next_element.next_element.text.split(" ")

      melee_def = monster_stats[2]
      ranged_def = monster_stats[4]
      magic_def = monster_stats[6]


      monster_elements = item.next_element.next_element.next_element.next_element.next_element.text.split(" ")

      fire = monster_elements[2].chomp("%").to_i - 100
      water = monster_elements[4].chomp("%").to_i - 100
      wind = monster_elements[6].chomp("%").to_i - 100
      ice = monster_elements[8].chomp("%").to_i - 100
      earth = monster_elements[10].chomp("%").to_i - 100
      energy = monster_elements[12].chomp("%").to_i - 100
      light = monster_elements[14].chomp("%").to_i - 100
      darkness = monster_elements[16].chomp("%").to_i - 100

      shield_fire = monster_elements[2].chomp("%").to_i
      shield_water = monster_elements[4].chomp("%").to_i
      shield_wind = monster_elements[6].chomp("%").to_i
      shield_ice = monster_elements[8].chomp("%").to_i
      shield_earth = monster_elements[10].chomp("%").to_i
      shield_energy = monster_elements[12].chomp("%").to_i
      shield_light = monster_elements[14].chomp("%").to_i
      shield_darkness = monster_elements[16].chomp("%").to_i

      if url == "http://zardwarsrevival.nfshost.com/encyclopedia.php?e=shields"
        Shield.new(name: name, item_desc: item_details, item_level: item_level, item_element: item_element, price: item_cost, sell_price: item_sell_cost, armor_melee: melee_def, armor_ranged: ranged_def, armor_magic: magic_def, armor_fire: shield_fire, armor_water: shield_water, armor_wind: shield_wind, armor_ice: shield_ice, armor_earth: shield_earth, armor_energy: shield_energy, armor_light: shield_light, armor_darkness: shield_darkness, extra: item_url).save(validate: false)
      else
        if name != "Invisibility Cloak"
          Armor.new(name: name, item_desc: item_details, item_level: item_level, item_element: item_element, price: item_cost, sell_price: item_sell_cost, armor_melee: melee_def, armor_ranged: ranged_def, armor_magic: magic_def, armor_fire: fire, armor_water: water, armor_wind: wind, armor_ice: ice, armor_earth: earth, armor_energy: energy, armor_light: light, armor_darkness: darkness, extra: item_url).save(validate: false)
        end
      end
    end
  end
end

get_items("http://zardwarsrevival.nfshost.com/encyclopedia.php?e=armour")
get_items("http://zardwarsrevival.nfshost.com/encyclopedia.php?e=shields")

def get_weapon_items(url)

  base_url = "http://zardwarsrevival.nfshost.com/encyclopedia.php"
  monster_index = Nokogiri::HTML(open(url))

  monster_index.css("li").each do |element|
    show_page_url = (base_url + element.css("a").map { |link| link['href'] }.join(""))
    show_page = Nokogiri::HTML(open(show_page_url))
    name = show_page.css("#main").css(".pagehead").inner_text
    puts name

    show_page.css("#main").css(".pagehead").each do |item|
      item_details = item.next_element.content
      item_url = "http://zardwarsrevival.nfshost.com/" + item.next_element.next_element["src"].to_s
      monster_attribute = item.next_element.next_element.next_element.text.split(" ")
      item_level = monster_attribute[2]
      item_type = monster_attribute[4]
      item_element = monster_attribute[6]
      item_damage = monster_attribute[8]
      if item_damage != nil
        item_damage = item_damage.split("-")
      else
        item_damage = [1,2]
      end
      base_damage = item_damage[0]
      random_damage = item_damage[1].to_i - item_damage[0].to_i
      item_bonus_to_hit = monster_attribute[12]
      if item_bonus_to_hit != nil
        item_bonus_to_hit = item_bonus_to_hit.chomp("%")
      end
      price = monster_attribute[14]
      sell_price = monster_attribute[16]

      if name != "Golden Axe"

        Weapon.new(base_damage: base_damage, name: name, item_desc: item_details, item_element: item_element, item_type: item_type, random_damage: random_damage, extra: item_url, item_level: item_level, price: price, sell_price: sell_price).save(validate: false)
      end
    end
  end
end

get_weapon_items("http://zardwarsrevival.nfshost.com/encyclopedia.php?e=weapons")

CharacterArmor.create(character_id: Character.all[0].id, armor_id: Armor.all.find{ |i| i.name == "Frogzard Hunter"}.id)

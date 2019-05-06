require 'nokogiri'
require 'open-uri'

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

      puts item_bonus_to_hit
      puts base_damage
      puts random_damage
      puts item_url
      Weapon.new(base_damage: base_damage, name: name, item_desc: item_details, item_element: item_element, item_type: item_type, random_damage: random_damage, extra: item_url, item_level: item_level, price: price, sell_price: sell_price).save(validate: false)

    #   monster_stats = item.next_element.next_element.next_element.next_element.text.split(" ")
    #
    #   melee_def = monster_stats[2]
    #   ranged_def = monster_stats[4]
    #   magic_def = monster_stats[6]
    #
    #
    #   monster_elements = item.next_element.next_element.next_element.next_element.next_element.text.split(" ")
    #
    #
    #   #monster_elements = item.next_element.next_element.next_element.next_element.next_element.next_element.text.split(" ")
    #
    #   fire = monster_elements[2].chomp("%").to_i - 100
    #   water = monster_elements[4].chomp("%").to_i - 100
    #   wind = monster_elements[6].chomp("%").to_i - 100
    #   ice = monster_elements[8].chomp("%").to_i - 100
    #   earth = monster_elements[10].chomp("%").to_i - 100
    #   energy = monster_elements[12].chomp("%").to_i - 100
    #   light = monster_elements[14].chomp("%").to_i - 100
    #   darkness = monster_elements[16].chomp("%").to_i - 100
    #
    #   shield_fire = monster_elements[2].chomp("%").to_i
    #   shield_water = monster_elements[4].chomp("%").to_i
    #   shield_wind = monster_elements[6].chomp("%").to_i
    #   shield_ice = monster_elements[8].chomp("%").to_i
    #   shield_earth = monster_elements[10].chomp("%").to_i
    #   shield_energy = monster_elements[12].chomp("%").to_i
    #   shield_light = monster_elements[14].chomp("%").to_i
    #   shield_darkness = monster_elements[16].chomp("%").to_i
    #
    #   if url == "http://zardwarsrevival.nfshost.com/encyclopedia.php?e=shields"
    #     Shield.new(name: name, item_desc: item_details, item_level: item_level, item_element: item_element, price: item_cost, sell_price: item_sell_cost, armor_melee: melee_def, armor_ranged: ranged_def, armor_magic: magic_def, armor_fire: shield_fire, armor_water: shield_water, armor_wind: shield_wind, armor_ice: shield_ice, armor_earth: shield_earth, armor_energy: shield_energy, armor_light: shield_light, armor_darkness: shield_darkness, extra: item_url).save(validate: false)
    #   else
    #     Armor.new(name: name, item_desc: item_details, item_level: item_level, item_element: item_element, price: item_cost, sell_price: item_sell_cost, armor_melee: melee_def, armor_ranged: ranged_def, armor_magic: magic_def, armor_fire: fire, armor_water: water, armor_wind: wind, armor_ice: ice, armor_earth: earth, armor_energy: energy, armor_light: light, armor_darkness: darkness, extra: item_url).save(validate: false)
    #   end
    end
  end
end

get_weapon_items("http://zardwarsrevival.nfshost.com/encyclopedia.php?e=weapons")
#get_other_items("http://zardwarsrevival.nfshost.com/encyclopedia.php?e=spells")
#get_other_items("http://zardwarsrevival.nfshost.com/encyclopedia.php?e=pets")

require 'nokogiri'
require 'open-uri'

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
    monster_level = monster_attribute[2]
    monster_exp = monster_attribute[4]
    monster_gold = monster_attribute[6]

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
    
  end


end

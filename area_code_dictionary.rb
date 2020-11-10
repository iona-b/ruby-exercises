dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

system "clear"
 
# Get city names from the hash
def get_city_names(dial_book)

    puts "------------------------------------------"
    puts ""
    puts "All Cities: "
    puts ""

    dial_book.keys.each { |city| puts city }

    puts ""

end
 
# Get area code based on given hash and key
def get_area_code(dial_book, input)

    dial_book.keys.each do |city|
        if city === input
            return "The area code for #{city} is #{dial_book["#{city}"]}."
        end
    end

    return "Sorry, we don't appear to have the dialling code for #{input}. :("

end
 
# Execution flow

input = ""

while input != "n"

    system "clear"

    puts "Enter a city name to get the dialling code: "
    puts "If you would like to see all of our cities, please enter ALL. "
    puts "To exit, enter n. "
    input = gets.chomp

    if input === "n"
        break
    elsif input === "ALL" 
        system "clear"
        get_city_names(dial_book)
        puts "------------------------------------------"
        puts "To return to the main menu, press y."
        puts "To exit, press n."
        input = gets.chomp
    else 
        system "clear"
        area_code = get_area_code(dial_book, input)
        puts area_code
        puts ""
        puts "------------------------------------------"
        puts ""
        puts "To return to the main menu, press any key."
        puts "To exit, press n."
        input = gets.chomp
    end

end

system "clear"
require './waitress.rb'
pancake_house_menu = PancakeHouseMenu.new
dinner_menu = DinnerMenu.new
cafe_menu = CafeMenu.new

waitress = Waitress.new(pancake_house_menu, dinner_menu, cafe_menu)
waitress.print_menu

require './menu.rb'

class Waitress
  def initialize(pancake_house_menu, dinner_menu, cafe_menu)
    @pancake_house_menu = pancake_house_menu
    @dinner_menu = dinner_menu
    @cafe_menu = cafe_menu
  end

  def print_menu
    pancake_iterator = @pancake_house_menu.create_iterator
    dinner_iterator = @dinner_menu.create_iterator
    cafe_iterator = @cafe_menu.create_iterator

    print "MENU\n----\n[breakfast]\n"
    show_menu(pancake_iterator)
    print "\n[lunch]\n"
    show_menu(dinner_iterator)
    print "\n[dinner]\n"
    show_menu(cafe_iterator)
  end

  def show_menu(iterator)
    while iterator.next?
      item = iterator.next
      print item.name + ':' + item.price.to_s + ' -- ' + item.description
      print "\n"
    end
  end
end

require './component.rb'

class Waitress
  def initialize(all_menus)
    @all_menus = all_menus
  end

  def print_menu
    @all_menus.show
  end
end

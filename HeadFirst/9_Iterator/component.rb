# Base class
class MenuComponent
  attr_reader :name, :description, :price, :vegetarian

  def show
  end
end

# A menu item component
class MenuItem < MenuComponent
  def initialize(name, description, vegetarian, price)
    @name = name
    @description = description
    @vegetarian = vegetarian
    @price = price
  end

  def show
    print ' ' + @name
    print '(v)' if @vegetarian
    print ':' + @price.to_s
    print ' -- ' + @description + "\n"
  end
end

class Menu < MenuComponent
  def initialize(name, description)
    @menu_components = []
    @name = name
    @description = description
  end

  def add(menu_component)
    @menu_components << menu_component
  end

  def remove(menu_component)
    @menu_components.delete(menu_component)
  end

  def fetch_child(i)
    @menu_components[i]
  end

  def show
    print "\n" + @name
    print ':' + @description
    print "\n--------------------\n"

    @menu_components.each do |component|
      component.show
    end
  end
end

require './iterator.rb'

# Menu interface
class Menu
  def create_iterator
  end
end

# Menu item
class MenuItem
  attr_reader :name, :description, :vegetarian, :price

  def initialize(name, description, vegetarian, price)
    @name = name
    @description = description
    @vegetarian = vegetarian
    @price = price
  end
end

# A pancake house menu
class PancakeHouseMenu < Menu
  attr_reader :menu_items

  def initialize
    @menu_items = []
    add_item('K&B\'s breakfast', 'with scrumble egg and toast.', true, 2.99)
    add_item('Normal breakfast', 'with baked egg and sausage.', false, 2.99)
    add_item('Blueberry pancake', 'made of blueberry.', true, 3.49)
    add_item('Waffle', 'Waffle with blueberry.', true, 3.59)
  end

  def add_item(name, description, vegetarian, price)
    @menu_items << MenuItem.new(name, description, vegetarian, price)
  end

  def create_iterator
    DinnerMenuIterator.new(@menu_items)
  end
end

# A diner menu
class DinnerMenu < Menu
  MAX_ITEMS = 6
  attr_reader :menu_items, :number_of_items

  def initialize
    @menu_items = []
    @number_of_items = 0

    add_item('BLT', 'Beacon, lettas, tomato sandwitch.', false, 2.99)
    add_item('Today\'s soup', 'Soup with potato salad.', true, 3.29)
    add_item('Hotdog', 'Sanding relish and cheese hotdog.', false, 3.05)
  end

  def add_item(name, description, vegetarian, price)
    @menu_items << MenuItem.new(name, description, vegetarian, price)
    if @number_of_items >= MAX_ITEMS
      p 'Cannot add menu.'
    else
      @number_of_items += 1
    end
  end

  def create_iterator
    DinnerMenuIterator.new(@menu_items)
  end
end

# A cafe menu
class CafeMenu < Menu
  attr_reader :menu_items

  def initialize
    @menu_items = {}

    add_item('Today\'s soup', 'Soup with salad.', true, 3.69)
    add_item('Britoo', 'Beans, salsa and some guacamole.', true, 4.29)
  end

  def add_item(name, description, vegetarian, price)
    menu_item = MenuItem.new(name, description, vegetarian, price)
    @menu_items[name] = menu_item
  end

  def create_iterator
    CafeMenuIterator.new(@menu_items)
  end
end

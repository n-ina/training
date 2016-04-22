require './waitress.rb'
pancake_house_menu = Menu.new('Pancake house menu', 'breakfast')
diner_menu = Menu.new('diner menu', 'lunch')
cafe_menu = Menu.new('cafe menu', 'dinner')
dessert_menu = Menu.new('dessert menu', 'dessert')

pancake_house_menu.add(
  MenuItem.new(
    'K&B\'s breakfast', 'with scrumble egg and toast.', true, 2.99
  )
)
pancake_house_menu.add(
  MenuItem.new(
    'Normal breakfast', 'with baked egg and sausage.', false, 2.99
  )
)
pancake_house_menu.add(
  MenuItem.new(
    'Blueberry pancake', 'made of blueberry.', true, 3.49
  )
)
pancake_house_menu.add(
  MenuItem.new(
    'Waffle', 'Waffle with blueberry.', true, 3.59
  )
)

diner_menu.add(
  MenuItem.new(
    'BLT', 'Beacon, lettas, tomato sandwitch.', false, 2.99
  )
)
diner_menu.add(
  MenuItem.new(
    'Today\'s soup', 'Soup with potato salad.', true, 3.29
  )
)
diner_menu.add(
  MenuItem.new(
    'Hotdog', 'Sanding relish and cheese hotdog.', false, 3.05
  )
)
diner_menu.add(dessert_menu)
dessert_menu.add(
  MenuItem.new(
    'Apple pie', 'An apple pie with icecream.', true, 1.59
  )
)

cafe_menu.add(
  MenuItem.new(
    'Veggie burger', 'Vegetable burger and fried potato.', true, 3.99
  )
)
cafe_menu.add(
  MenuItem.new(
    'Today\'s soup', 'Soup with salad.', false, 3.69
  )
)
cafe_menu.add(
  MenuItem.new(
    'Britoo', 'Beans, salsa and some guacamole.', true, 4.29
  )
)

all_menus = Menu.new('all menu', 'all integration menu')
all_menus.add(pancake_house_menu)
all_menus.add(diner_menu)
all_menus.add(cafe_menu)
all_menus.add(dessert_menu)

waitress = Waitress.new(all_menus)
waitress.print_menu

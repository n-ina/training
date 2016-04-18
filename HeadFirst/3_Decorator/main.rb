require "./decorator.rb"

beverage = Espresso.new
p beverage.getDescription() + " $" + beverage.cost().to_s


beverage2 = HouseBlend.new
beverage2 = Soy.new(beverage2)
beverage2 = Mocha.new(beverage2)
beverage2 = Whip.new(beverage2)
p beverage2.getDescription() + " $" + beverage2.cost().to_s

require './pizza_store.rb'

ny_store = NYPizzaStore.new
chicago_store = ChicagoPizzaStore.new

a = ny_store.order_pizza('Cheese')
p 'A ordered ' + a.name

b = chicago_store.order_pizza('Cheese')
p 'B ordered ' + b.name

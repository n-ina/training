require './pizza.rb'

# Base pizza store
class PizzaStore
  def order_pizza(type)
    pizza = create_pizza(type)

    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box

    pizza
  end

  def create_pizza(type)
  end
end

# New York style pizzastore
class NYPizzaStore < PizzaStore
  def create_pizza(type)
    case type
    when 'Cheese' then
      return NYStyleCheesePizza.new
    when 'Veggie' then
      return NYStyleVeggiePizza.new
    when 'Clam' then
      return NYStyleClamPizza.new
    when 'Pepperoni' then
      return NYStylePepperoniPizza.new
    end
  end
end

# Chicago style pizzastore
class ChicagoPizzaStore < PizzaStore
  def create_pizza(type)
    ChicagoStyleCheesePizza.new if type == 'Cheese'
  end
end

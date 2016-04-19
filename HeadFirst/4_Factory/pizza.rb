# Base pizza
class Pizza
  attr_reader :name

  def initialize
    @toppings = []
  end

  def prepare
    p 'prepare of ' + @name
    p 'adding sause...'
    p 'adding topping...'

    @toppings.each do |topping|
      p topping
    end
  end

  def bake
    p 'baking 25min'
  end

  def cut
    p 'cutting pie-shape'
  end

  def box
    p 'inserting a box'
  end
end

# NYStyleCheesePizza
class NYStyleCheesePizza < Pizza
  def initialize
    super
    @name = 'New york style sause and cheese pizza'
    @dough = 'thin crust'
    @sause = 'marinara'
    @toppings << 'pawder cheese'
  end
end

# ChicagoStyleCheesePizza
class ChicagoStyleCheesePizza < Pizza
  def initialize
    super
    @name = 'Chicago style sause and cheese pizza'
    @dough = 'thin crust'
    @sause = 'marinara'
    @toppings << 'mozzarella cheese'
  end

  def cut
    p 'cutting square'
  end
end

require "./beverage.rb"

class Decorator < Beverage
  def getDescription()
  end
end

class Mocha < Decorator
  def initialize(beverage)
    @beverage = beverage
  end

  def getDescription()
    return @beverage.getDescription() + ", Mocha"
  end

  def cost()
    return 0.20 + @beverage.cost()
  end
end

class Whip < Decorator
  def initialize(beverage)
    @beverage = beverage
  end

  def getDescription()
    return @beverage.getDescription() + ", Whip"
  end

  def cost()
    return 0.10 + @beverage.cost()
  end
end

class Soy < Decorator
  def initialize(beverage)
    @beverage = beverage
  end

  def getDescription()
    return @beverage.getDescription() + ", Soy"
  end

  def cost()
    return 0.15 + @beverage.cost()
  end
end



class Beverage
  def initialize()
  end

  def getDescription()
    return @description
  end

  def cost()
  end
end

class Espresso < Beverage
  def initialize()
    @description = "Esplesso"
  end

  def cost()
    return 1.99
  end
end

class HouseBlend < Beverage
  def initialize()
    @description = "House blend coffee"
  end
  
  def cost()
    return 0.89
  end
end


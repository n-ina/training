# Abstract class
class CaffeineBeverage
  def prepare_recipe
    boil_water
    brew
    pour_in_cup
    add_condiments if customer_wants_condiments
  end

  # abstract method
  def brew
  end

  def add_condiments
  end

  def boil_water
    p 'boiling water...'
  end

  def pour_in_cup
    p 'pouring in cup...'
  end

  def customer_wants_condiments
    true
  end
end

# create tea
class Tea < CaffeineBeverage
  def brew
    p 'immersing tea...'
  end

  def add_condiments
    p 'adding a slice of lemon...'
  end
end

# create coffee
class Coffee < CaffeineBeverage
  def brew
    p 'driping coffee...'
  end

  def add_condiments
    p 'adding sugar and milk...'
  end

  def customer_wants_condiments
    print 'Would you like some sugar and milk in your coffee? (y/n):'
    str = STDIN.gets
    str.downcase.start_with?('y')
  end
end

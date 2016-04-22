# Iterator
class Iterator
  def initialize(items)
    @items = items
    @position = 0
  end

  def next
    menu_item = @items[@position]
    @position += 1
    menu_item
  end

  def next?
    if @position >= @items.length || @items[@position].nil?
      false
    else
      true
    end
  end
end

# DinnerMenuIterator
class DinnerMenuIterator < Iterator
  def initialize(items)
    super(items)
  end

  def next
    super()
  end

  def next?
    super()
  end
end

# CafeMenuIterator
class CafeMenuIterator < Iterator
  def initialize(items)
    super(items)
  end

  def next
    menu_item = @items.to_a[@position]
    @position += 1
    menu_item[1]
  end

  def next?
    if @position >= @items.length || @items.to_a[@position].nil?
      false
    else
      true
    end
  end
end

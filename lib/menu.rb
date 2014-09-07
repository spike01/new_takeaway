class Menu

  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add(item)
   items << item
  end

  def display
    items.map { |item| "#{item.name}: £#{item.price}0" }
  end


end

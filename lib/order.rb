class Order

  attr_reader :order_id, :list

  def initialize
    @order_id = self.object_id 
    @list = []
  end

  def order(item)
    list.push(item)
  end

  def total
    list.inject { |x, y| x.price + y.price }
  end

end

class Takeaway

  ONE_HOUR = 60**2 # one hour in seconds

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def display_menu(menu)
    menu.display.each { |item| puts item }
  end

  def take_order(order)
    raise "Totals do not match - bad order" unless check_order?(order)
    "Thank you! Your order was placed and will be delivered before #{(Time.now + ONE_HOUR).strftime("%I:%M%p")}" 
  end

  def check_order?(order)
    order.total == order.items.inject {|x,y| x.price + y.price}
  end
end

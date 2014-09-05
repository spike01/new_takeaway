class Takeaway

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def display_menu(menu)
    menu.display
  end
end

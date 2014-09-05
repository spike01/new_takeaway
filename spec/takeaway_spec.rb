require 'takeaway'

describe Takeaway do

  let(:dial_a_drink) { Takeaway.new("Dial A Drink!") }
  let(:menu)         { double :menu, display: :menu_items }

  it "must initialize with a name" do
    expect(Takeaway.new("Ultimate Fried Mars Bar").name).to eq("Ultimate Fried Mars Bar")
  end

  it "has a name" do
    expect(dial_a_drink.name).to eq("Dial A Drink!") 
  end

  it "has a list of 'dishes' that can be requested" do
    expect(menu).to receive(:display)
    dial_a_drink.display_menu(menu)
  end

end

=begin

Implement the following functionality:
list of dishes with prices
placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".

=end

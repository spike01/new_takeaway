require 'takeaway'
require 'timecop'

describe Takeaway do

  let(:dial_a_drink) { Takeaway.new("Dial A Drink!") }
  let(:menu)         { double :menu, display: [:menu_item_1, :menu_item_2] }
  let(:beer)         { double :beer, price: 2.0 }
  let(:cider)        { double :cider, price: 1.0 }
  let(:order)        { double :order, total: 3.0, list: [beer, cider] }
  let(:bad_order)    { double :order, total: 5.0, list: [beer, cider] }

  it "must initialize with a name" do
    expect(Takeaway.new("Ultimate Fried Mars Bar").name).to eq("Ultimate Fried Mars Bar")
  end

  it "has a name" do
    expect(dial_a_drink.name).to eq("Dial A Drink!") 
  end

  it "has a list of 'dishes' that can be requested" do
    dial_a_drink.display_menu(menu)
  end

  it "checks that the order total is correct" do
    expect(dial_a_drink.check_order?(order)).to be(true)
  end

  it "raises an error if the totals are incorrect" do
    expect{dial_a_drink.take_order(bad_order)}.to raise_error(RuntimeError) 
  end

  it "takes orders" do
    allow(dial_a_drink).to receive(:take_order).with(order).and_return("Thank you! Your order was placed and will be delivered before 01:00AM")
    Timecop.freeze(Time.local(2014))
    expect(dial_a_drink.take_order(order)).to eq("Thank you! Your order was placed and will be delivered before 01:00AM") 
  end

  it "sends a text message when an order is placed" do
    allow(dial_a_drink).to receive(:send_message).with("Order").and_return("Message sent")
    expect(dial_a_drink.send_message("Order")).to eq ("Message sent")
  end
end


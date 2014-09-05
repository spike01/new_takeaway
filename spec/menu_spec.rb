require 'menu'

describe Menu do

  let(:drink_menu) { Menu.new("Booze list") }
  let(:beer) { double :item, name: "Beer", price: "2.0" }
  let(:breakaway) { double :takeaway }
  
  it "must be initialized with a name" do
    expect(drink_menu.name).to eq("Booze list")
  end

  it "has a list of 'dishes'" do
    expect(drink_menu.items).to be_an(Array)
  end
  
  it "adds 'dishes' to its list" do
    drink_menu.add(beer)
    expect(drink_menu.items).to eq([beer])
  end 

   it "is asked to display a list of its items" do
     drink_menu.add(beer)
     expect(drink_menu.display).to eq(["Beer: £2.00"])
   end
end

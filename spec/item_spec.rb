require 'item'

describe Item do
  
  let(:vodka) { Item.new("Vodka", 12) }

  it "initializes with a name" do
    expect(vodka.name).to eq("Vodka")
  end

  it "initiailizes with a price" do
    expect(vodka.price).to eq(12.0)
  end
end

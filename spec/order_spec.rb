require 'order'

describe Order do

  let(:beer) { double :beer, price: 2.0 }
  let(:cider) { double :cider, price: 1.0 }
  let(:order) { Order.new } 
  
  it 'has an order number' do
    expect(order.order_id).to eq(order.object_id)
  end

  it 'holds items' do
    expect(order.list.class).to eq(Array)
  end

  it 'adds items into its list' do
    order.order(cider)
    order.order(beer)
    expect(order.list).to eq([cider, beer])
  end

  it 'calculates the order total' do
    order.order(cider)
    order.order(beer)
    expect(order.total).to eq(3)
  end
end

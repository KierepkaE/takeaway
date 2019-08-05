require 'takeaway'

describe Takeaway do
  let(:menu) {double(:menu, print_menu: list)}
  let(:list) {"fish £2.50, salad £1.00"}
  let(:order) {double(:order)}
  subject(:takeaway) {described_class.new(menu: menu, order: order)}

  let(:dishes) do {
    fish: 2,
    salad: 1
  }
  end


  it 'shows a list of dishes' do
    expect(takeaway.print).to eq list
  end

  it 'places a new order with several dishes' do
    expect(order).to receive(:add)
    expect(takeaway.place_order(dishes))
  end

end
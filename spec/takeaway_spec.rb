require 'takeaway'

describe Takeaway do
  let(:menu) {double(:menu, print_menu: list)}
  let(:list) {"fish £2.50, salad £1.00"}
  subject(:takeaway) {described_class.new(menu: menu)}

  let(:dishes) do {
    fish: 2.50,
    salad: 1.00
  }
  end

  subject(:takeaway) {described_class.new(menu)}
  it 'shows a list of dishes' do
    expect(takeaway.print).to eq list
  end
end
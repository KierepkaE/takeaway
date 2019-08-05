require 'menu'
describe Menu do

  let(:dishes) do {
    fish: 2.50,
    salad: 1.00
  }
end

  subject(:menu) {described_class.new(dishes)}

  it 'have a list of dishes' do
    expect(menu.dishes).to eq(dishes)
  end

end
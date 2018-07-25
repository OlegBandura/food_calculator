require 'ingredient'
describe Ingredient do
  context '#==' do
    let(:first_ingredient) { described_class.new(name: 'Potato', price: 20) }
    let(:second_ingredient) { described_class.new(name: 'Potato', price: 20) }
    it '==' do
      expect(first_ingredient).to eq(second_ingredient)
    end
    let(:third_ingredient) { described_class.new(name: 'Apple', price: 50) }
    it '!=' do
      expect(first_ingredient).to_not eq(third_ingredient)
    end
  end
end

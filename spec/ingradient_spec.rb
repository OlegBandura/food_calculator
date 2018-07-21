require 'ingredient'
describe Ingredient do
  describe '#==' do
    first_ingredient = Ingredient.new(name: 'potato', price: 10)
    second_ingredient = Ingredient.new(name: 'potato', price: 10)
    it '==' do
      expect(first_ingredient == second_ingredient).to be_trythy
    end
  end
end

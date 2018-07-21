require 'ingredient_quantity'
describe IngredientQuantity do
  context '#total_cost' do
    ingredient = Ingredient.new(name: 'carrot', price: 2)
    ingredient = Ingredient.new(name: 'potato', price: 5)
    ingredient = Ingredient.new(name: 'carrot', price: 2)

    quantity = 0.3
    price = ingredient[:price] * quantity
    cost = 0.6
    it 'total cost' do
      expect(price).to eq(cost)
    end

    ingredient_quantity = IngredientQuantity.new(price: price)

    # before do
    #   i
    # end

    it '#+' do
      expect(ingredient_quantity).to eq
    end

    it '#*' do

    end
  end
end

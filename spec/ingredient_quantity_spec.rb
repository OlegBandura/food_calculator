require 'ingredient'
require 'ingredient_quantity'

describe IngredientQuantity do
  let(:first_ingredient) { Ingredient.new(name: 'Potato', price: 10) }
  describe '#total_cost' do
    context 'get total price' do
      it { expect(described_class.new.total_price).to eq(nil) }

      let(:count_first_ingredient) { described_class.new(ingredient: first_ingredient, quantity: 200) }
      it 'create first ingredient' do
        expect(count_first_ingredient.total_price).to eq(2)
      end
    end
  end

  describe '#+' do
    let(:ingredient_1) { described_class.new(ingredient: first_ingredient, quantity: 500) }
    let(:ingredient_2) { described_class.new(ingredient: first_ingredient, quantity: 400) }
    let(:ingredient_quantity) { ingredient_1 + ingredient_2 }
      it 'ingredient != nil' do
        expect(ingredient_quantity.total_price).to eq(ingredient_1.total_price + ingredient_2.total_price)
      end
    end

  describe '#*' do
    before do
      @ingredient_1 = described_class.new(ingredient: first_ingredient, quantity: 100)
    end

    context "помножемо на обєкт" do
      ingredient_quantity = described_class.new

      it "Не пустий обєкт * 2" do
        @ingredient_1 *= 2
        expect(@ingredient_1.total_price).to eq(2)
        expect(@ingredient_1.quantity).to eq(200)
      end
      it "Не пустий обєкт * 10" do
        @ingredient_1 *= 10
        expect(@ingredient_1.total_price).to eq(10)
        expect(@ingredient_1.quantity).to eq(1000)
      end
    end
  end
end

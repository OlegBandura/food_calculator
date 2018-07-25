# ingredient quantity
class IngredientQuantity < Ingredient
  attr_accessor :quantity, :ingredient, :total_price
  def initialize(ingredient: nil, quantity: 0)
    @quantity = quantity
    @ingredient = ingredient
    total_cost
  end

  def total_cost
    @total_price = @quantity * @ingredient.price / 1000 if @ingredient
  end

  def +(other)
    ingredient_quantity(other) if @ingredient == other.ingredient
  end

  def ingredient_quantity(other)
    quantity = @quantity + other.quantity
    IngredientQuantity.new(ingredient: @ingredient, quantity: quantity)
  end

  def *(other)
    if other > 0 && @ingredient
      @quantity *= other
      total_cost
      self
    end
  end
end

# class Ingredient
class Ingredient
  attr_reader :name, :price
  def initialize(name:, price:)
    @name = name
    @price = price
  end

  def ==(other)
    other.name == @name && other.price == @price
  end
end

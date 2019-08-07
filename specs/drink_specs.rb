require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')


class TestDrink < Minitest::Test

def test_drink_name
  drink = Drink.new("Pink Gin", 5)
  assert_equal("Pink Gin", drink.name)
end

def test_drink_price
  drink = Drink.new("Pink Gin", 5)
  assert_equal(5, drink.get_drink_price())
end

def test_drink_alcool_level
  drink = Drink.new("Whiskey", 15, 40)
  assert_equal(40, drink.get_alcohol_level)
end


end

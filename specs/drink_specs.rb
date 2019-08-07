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
  assert_equal(5, drink.price)
end



end

require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')


class TestPub < Minitest::Test

def setup
  @drink1 = Drink.new("Pink Gin", 5)
  @drink2 = Drink.new("Whiskey", 10)
  @drink3 = Drink.new("White wine", 15)

  @pub1 = Pub.new("Doctor's", 1000, [@drink1, @drink2, @drink3])
end

def test_pub_name
  assert_equal("Doctor's", @pub1.name())
end

def test_pub_till
  assert_equal(1000, @pub1.till())
end

def test_pub_drinks
  assert_equal(3, @pub1.drinks.count())
end

def test_drinks_count
  assert_equal(3, @pub1.drinks_count())
end

def test_removing_drink
  @pub1.get_drink(@drink2)
  assert_equal(2, @pub1.drinks_count())
end


end

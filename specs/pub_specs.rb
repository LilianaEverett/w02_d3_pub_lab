require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')
require_relative('../food')


class TestPub < Minitest::Test

  def setup
    @drink1 = Drink.new("Pink Gin", 5)
    @drink2 = Drink.new("Whiskey", 10)
    @drink3 = Drink.new("White wine", 15)
    @food1 = Food.new('chips', 3, 3)

    @customer1 = Customer.new("Liliana", 40, 25, 6)
    @customer2 = Customer.new("Shona", 50, 15)
    @customer3 = Customer.new("Joe", 30, 50, 10)

    @pub1 = Pub.new("Doctor's", 1000, [@drink1, @drink2, @drink3])
    @pub2 = Pub.new("The Wee Pub", 1000, [@drink1, @drink2, @food1])
  end

  def test_pub_name
    assert_equal("Doctor's", @pub1.name())
  end

  def test_pub_till
    assert_equal(1000, @pub1.till())
  end

  def test_pub_stock_count
    assert_equal(3, @pub1.stock.count())
  end

  def test_stock_count
    assert_equal(3, @pub1.stock_count())
  end

  def test_removing_drink
    @pub1.remove_stock(@drink2)
    assert_equal(2, @pub1.stock_count())
  end

  def test_till_total
    assert_equal(1000, @pub1.till)
  end

  def test_add_money_to_till
    @pub1.add_money_to_till(10)
    assert_equal(1010, @pub1.till())
  end

  def test_sell_drink_to_a_customer__if_over_18
    @pub1.sell_drink(@drink3, @customer1)
    assert_equal(25, @customer1.wallet())
    assert_equal(2, @pub1.stock_count())
    assert_equal(1015, @pub1.till())
  end

  def test_sell_drink_to_a_customer__if_under_18
    @pub1.sell_drink(@drink3, @customer2)
    assert_equal(50, @customer2.wallet())
    assert_equal(3, @pub1.stock_count())
    assert_equal(1000, @pub1.till())
  end

  def test_sell_drink_to_a_customer__if_drunk
    result = @pub1.sell_drink(@drink2, @customer3)
    assert_equal("Sorry, I'm not allowed to seel you a drink", result)
  end

  def test_sell_food_to_a_customer
    @pub2.sell_food(@customer3, @food1)
    assert_equal(7, @customer3.drunkenness())
    assert_equal(27, @customer3.wallet())
    assert_equal(2, @pub2.stock_count())
  end

end

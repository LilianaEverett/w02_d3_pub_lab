require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')


class TestCustomer < Minitest::Test

def setup

  @customer1 = Customer.new("Shona", 20)
  @customer2 = Customer.new("Liliana", 30, 40)
  @customer3 = Customer.new("John", 45, 30, 10)

end

def test_customer_name
  assert_equal("Shona", @customer1.name())
end

def test_customer_wallet
  assert_equal(20, @customer1.wallet())
end

def test_reduce_money_from_wallet
  @customer1.reduce_money_from_wallet(10)
  assert_equal(10, @customer1.wallet)
end

def test_customer_age
  assert_equal(40, @customer2.get_customer_age())
end

def test_drunkenness_level
  assert_equal(10, @customer3.get_drunkenness_level)
end


end

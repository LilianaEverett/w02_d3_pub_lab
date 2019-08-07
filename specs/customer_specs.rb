require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')


class TestCustomer < Minitest::Test

def setup

  @customer1 = Customer.new("Shona", 20)

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



end

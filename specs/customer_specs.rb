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

end

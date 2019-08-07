require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer')
require_relative('../drink')

class TestCustomer < MiniTest::Test

def test_get_customer_name()
customer = Customer.new("Sally", 5)
  assert_equal("Sally", customer.name())
end

def test_get_wallet_amount()
  customer_wallet = Customer.new("Jane", 10)
  assert_equal(10, customer_wallet.wallet())
end

# def test_buy_drink()
#   balance_of_wallet = Customer.new("Jane", 10)
#   assert_equal(8, balance_of_wallet.buy_drink())
# end


end

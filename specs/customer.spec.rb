require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer')
require_relative('../drink')

class TestCustomer < MiniTest::Test

def test_get_customer_name()
customer = Customer.new("Sally", 5, 20)
  assert_equal("Sally", customer.name())
end

def test_get_wallet_amount()
  customer_wallet = Customer.new("Jane", 10, 25)
  assert_equal(10, customer_wallet.wallet())
end

# def test_buy_drink()
#   balance_of_wallet = Customer.new("Jane", 10)
#   assert_equal(8, balance_of_wallet.buy_drink())
# end

# def test_can_afford_buy_drink__true()
#   customer = Customer.new("Jane", 10)
#   drink = Drink.new("Beer", 2)
#   assert_equal(true, customer.test_can_afford_buy_drink())
# end

def test_can_afford_buy_drink__true()
  customer = Customer.new("Jane", 10, 25)
  drink = Drink.new("Beer", 2, 6.4)
  assert_equal(true, customer.can_afford_buy_drink(drink))
end

def test_can_afford_buy_drink__true__exact_price()
  customer = Customer.new("Jane", 2, 25)
  drink = Drink.new("Beer", 2, 6.4)
  assert_equal(true, customer.can_afford_buy_drink(drink))
end

def test_can_afford_buy_drink__false()
  customer = Customer.new("Jane", 1, 25)
  drink = Drink.new("Beer", 2, 6.4)
  assert_equal(false, customer.can_afford_buy_drink(drink))
end

def test_buy_drink()
  customer = Customer.new("Jane", 10, 25)
  drink = Drink.new("Wine", 3, 15)
  assert_equal(7, customer.buy_drink(drink))
end

def test_customer_age()
  customer = Customer.new("Jane", 10, 25)
  assert_equal(25, customer.age())
end

def test_customer_underage()
  customer = Customer.new("Johnnie", 10, 17)
  assert_equal("Underage", customer.age())
end




end

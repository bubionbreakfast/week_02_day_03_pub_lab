require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer')
require_relative('../drink')

class TestDrink < MiniTest::Test

def test_drink_name()
  drink_name = Drink.new("Beer", 2)
  assert_equal("Beer", drink_name.name())
end

def test_drink_price()
  drink_price = Drink.new("Wine", 3)
  assert_equal(3, drink_price.price)
end




end

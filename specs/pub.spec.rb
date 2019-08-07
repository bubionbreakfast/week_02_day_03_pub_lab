require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer')
require_relative('../drink')

class TestPub < MiniTest::Test

def setup()
  @drink1 = Drink.new("Beer", 2, 6.4)
  @drink2 = Drink.new("Wine", 3, 15)
  @drink3 = Drink.new("Spirits", 4, 40)
  @pub = Pub.new("Bobs", 10, [@drink1, @drink2, @drink3])
  @customer = Customer.new("Sally", 5, 25)
end

def test_get_pub_name()
  assert_equal("Bobs", @pub.name())
end

def test_get_till_amount()
  assert_equal(10, @pub.till_amount())
end
#
def test_get_number_of_drinks()
  assert_equal(3, @pub.number_of_drinks())
end

def test_can_sell_drink()
  customer = Customer.new("Jane", 10, 25)
  drink = Drink.new("Wine", 3, 15)
  pub = Pub.new("Bobs", 10, [@drink1, @drink2, @drink3])
  assert_equal(13, pub.sell_drink(drink))
end

end

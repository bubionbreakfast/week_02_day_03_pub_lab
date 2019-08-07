require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer')
require_relative('../drink')

class TestPub < MiniTest::Test

def setup()
  @drink1 = Drink.new("Beer", 2)
  @drink2 = Drink.new("Wine", 3)
  @drink3 = Drink.new("Spirits", 4)
  @pub = Pub.new("Bobs", 10, [@drink1, @drink2, @drink3])
end

def test_get_pub_name()
  assert_equal("Bobs", @pub.name())
end

def test_get_till_amount()
  assert_equal(10, @pub.till_amount())
end

def test_get_number_of_drinks()
  assert_equal(3, @pub.number_of_drinks())
end

end

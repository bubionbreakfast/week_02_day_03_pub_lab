class Pub

attr_reader :name, :till, :drinks
attr_writer :till

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks

end

def till_amount()
  return @till
end

def number_of_drinks()
  return drinks.count
end

def sell_drink(drink)
  @till += drink.price()
end


end

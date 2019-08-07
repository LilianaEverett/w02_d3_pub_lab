class Pub

attr_reader :name, :till, :drinks

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks
end

def drinks_count
  return @drinks.count
end

def add_money_to_till(amount)
  @till += amount
end

def remove_drink(drink)
   @drinks.delete(drink)
end

def
  if condition

  end
#
# end

# gets drink_price

# def reduce_money_from_wallet(price_drink)
#   @wallet -= amount
# end

# add_money_to_till(price_drink)

# remove_drink(drink)



end

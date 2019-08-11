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

def sell_drink(drink, customer)
  if customer.get_customer_age >= 18 && customer.get_drunkenness_level < 8
    drink_price = drink.get_drink_price
    @till += drink_price
    customer.reduce_money_from_wallet(drink_price)
    remove_drink(drink)
    drinks_count
  else
    return "Sorry, I'm not allowed to seel you a drink"
  end
end





end

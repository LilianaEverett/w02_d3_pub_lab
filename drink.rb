class Drink

  attr_reader :name, :price, :alcohol_level

def initialize(name, price, alcool_level = [])
  @name = name
  @price = price
  @alcohol_level = alcool_level
end

def get_drink_price
  return @price
end

def get_alcohol_level
  return @alcohol_level
end

end

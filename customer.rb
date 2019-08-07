class Customer

attr_reader :name, :wallet, :age, :drunkenness

def initialize(name, wallet, age = [], drunkenness = [])
  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = drunkenness
end


def reduce_money_from_wallet(amount)
  @wallet -= amount
end

def get_customer_age
  return @age
end

def get_drunkenness_level
  return @drunkenness
end

end

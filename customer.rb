class Customer

attr_reader :name, :wallet, :age

def initialize(name, wallet, age = [])
  @name = name
  @wallet = wallet
  @age = age
end


def reduce_money_from_wallet(amount)
  @wallet -= amount
end

def get_customer_age
  return @age
end

end

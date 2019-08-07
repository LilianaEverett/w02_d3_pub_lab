class Customer

attr_reader :name, :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end


def reduce_money_from_wallet(amount)
  @wallet -= amount
end

end

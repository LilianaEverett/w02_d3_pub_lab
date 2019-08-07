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

def method_name

end

def get_drink(drink)
   @drinks.delete(drink)
end

end

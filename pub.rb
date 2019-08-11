class Pub

attr_reader :name, :till, :stock

  def initialize(name, till, stock)
    @name = name
    @till = till
    @stock = stock
  end

  def stock_count
    return @stock.count
  end

  def add_money_to_till(amount)
    @till += amount
  end

  def remove_stock(drink)
     @stock.delete(drink)
  end

  def sell_drink(drink, customer)
    if customer.get_customer_age >= 18 && customer.get_drunkenness_level < 8
      drink_price = drink.get_drink_price
      @till += drink_price
      customer.reduce_money_from_wallet(drink_price)
      remove_stock(drink)
      stock_count
    else
      return "Sorry, I'm not allowed to seel you a drink"
    end
  end

  def sell_food(customer, food)
    food_price = food.get_food_price(food)
    @till += food_price
    customer.reduce_money_from_wallet(food_price)
    customer.drunkenness -= food.rejuv_level(food)

  end




# rejuv_level(food)
end

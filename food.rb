class Food

attr_reader :name, :rejuv_level

  def initialize(name, price, rejuv_level)
    @name = name
    @price = price
    @rejuv_level = rejuv_level
  end

  def rejuv_level(food)
    @rejuv_level
  end

  def get_food_price
    return @price
  end


end

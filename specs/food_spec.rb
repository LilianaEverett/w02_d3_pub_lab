require('minitest/autorun')
require('minitest/rg')
require_relative('../food')

class TestFood < MiniTest::Test

  def setup
    @food1 = Food.new('rice', 5, 2)

  end

  def test_get_food_name
    assert_equal('rice', @food1.name)
  end

  def test_get_rejuvenation_level
    assert_equal(2, @food1.rejuv_level)
  end

end

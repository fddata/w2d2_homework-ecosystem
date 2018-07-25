require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear.rb'
require_relative '../fish.rb'
require_relative '../river.rb'

class BearTest < MiniTest::Test


  def setup
    #setting up test environment with one hungry bear and a river with 3 fish.
    @bear1 = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Dick")
    @fish3 = Fish.new("Harry")

    @river1 = River.new("Amazon")
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)

  end

  def test_count_bear_food
    @bear1.bear_eats_fish(@river1)
    result = @bear1.count_food
    assert_equal(1, result)
  end


  def test_bear_stomach_is_empty
    assert_equal(0, @bear1.count_food)
  end


  def test_bear_eats_fish
    @bear1.bear_eats_fish(@river1)
    result1 = @bear1.bear_stomach.size
    result2 = @river1.fish_in_river.size
    assert_equal(1, result1)
    assert_equal(2, result2)
  end


  def test_bear_roar
    result = @bear1.roar
    assert_equal("RRRAAAWWWRRR!!!", result)
  end

end

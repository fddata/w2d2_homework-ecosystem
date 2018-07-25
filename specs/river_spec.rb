require 'minitest/autorun'
require 'minitest/rg'
require_relative '../river.rb'
require_relative '../fish.rb'

class RiverTest < MiniTest::Test


  def setup

    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Dick")
    @fish3 = Fish.new("Harry")

    @river1 = River.new("Amazon")
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)

    #we can also initialize the array with fish in it (question doesn't specify which method to use):
    #river = River.new("Amazon", [@fish1, @fish2])
  end

 def test_river_has_name()
   river_name = @river1.river_name
   assert_equal("Amazon", river_name)

 end


  # Why does this work with attr_reader? Aren't we writing to the array?
  # No - it is contained within the River class, so it has control.  attr_reader ensures other classes cant go in and modify arrays outwith their classes.
  def test_add_fish
    @river1.add_fish(@fish3)
    result = @river1.fish_in_river
    assert_equal(3, result.size)
  end


  def test_remove_fish
    # We are testing:
    # - that the size of the fish_in_river array is decreased by one
    # - that the name of the fish matches the first name of the fish
    # - that the returned object is of the fish class
    supplied_fish = @river1.remove_fish
    result1 = @river1.fish_in_river
    assert_equal(1, result1.size)
    assert_equal("Tom", supplied_fish.fish_name)
    assert_equal(Fish, supplied_fish.class)
  end

  def test_count_fish
    result = @river1.count_fish
    assert_equal(2, result)
  end


end

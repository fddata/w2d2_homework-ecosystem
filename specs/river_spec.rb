require 'minitest/autorun'
require 'minitest/rg'
require_relative '../river.rb'
require_relative '../fish.rb'

class RiverTest < MiniTest::Test


  def setup
    #@fish1,2.. etc are initialised in the fish_spec file
    @river1 = River.new("Amazon")
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
  end

#Why does this work with attr_reader? Aren't we writing to the array?
  def test_add_fish
    @river1.add_fish(@fish3)
    result = @river1.fish_in_river
    assert_equal(3, result.size)
  end


  def test_remove_fish
    @river1.remove_fish
    result = @river1.fish_in_river
    assert_equal(1, result.size)
  end

  def test_count_fish
    result = @river1.count_fish
    assert_equal(2, result)
  end


end

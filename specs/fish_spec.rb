require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish.rb'

class FishTest < MiniTest::Test

  # We don't need a fish setup, we can do it in-situ in the test
  # def setup
  #   @fish1 = Fish.new("Tom")
  #   @fish2 = Fish.new("Dick")
  #   @fish3 = Fish.new("Harry")
  # end

  def test_fish_has_name()
    fish = Fish.new("Tom")
    assert_equal("Tom", fish.fish_name)
  end

end

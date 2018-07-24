require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish.rb'

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Dick")
    @fish3 = Fish.new("Harry")
  end

end

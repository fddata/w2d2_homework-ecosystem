# *A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
#
# *A bear should have an empty stomach ( maybe an array )
#
# *A bear should be able to take a fish from the river
#
#* A river should lose a fish when a bear takes a fish
#
# *A bear could have a roar method
#
# *A bear could have a food_count method
class Bear

  attr_reader :bear_stomach, :bear_name

  def initialize(bear_name, bear_breed)
    @bear_name = bear_name
    @bear_breed = bear_breed
    @bear_stomach = []
  end


  #Removes fish from river using remove_fish method then adds to bear stomach.
  def bear_eats_fish(river_name)
    eaten_fish = river_name.remove_fish()
    @bear_stomach.push(eaten_fish)
  end

  def roar
    return "RRRAAAWWWRRR!!!"
  end

  def count_food
    return @bear_stomach.size
  end

end

# **A river should have a name e.g. "Amazon"
#
# **A river should hold many fish
#
# A river should lose a fish when a bear takes a fish
#
# **A river could have a fish_count method

class River
  attr_reader :fish_in_river, :river_name

  def initialize(river_name)
    @river_name = river_name
    @fish_in_river = []
    #we can also initialize the array with fish in it (question doesn't specify which method to use):
    #initialize(river_name, fish_array)
  end


  def add_fish(fish)
    @fish_in_river.push(fish)
  end

  def remove_fish
    @fish_in_river.shift()
  end

  def count_fish
    return @fish_in_river.size
  end


end

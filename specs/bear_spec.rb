require ("minitest/autorun")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")



class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi")
    @river = River.new("Danube")
    @fish1 = Fish.new("John")
    @fish2 = Fish.new("Paul")
    @fish3 = Fish.new("George")
    @fish4 = Fish.new("Ringo")
  end


  def test_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_catch_fish
    @river.take_fish(@fish1)
    @river.take_fish(@fish2)
    @river.take_fish(@fish3)
    @river.take_fish(@fish4)
    @bear.catch_fish(@river, 2)
    assert_equal(2, @bear.stomach.length)
    assert_equal(2, @river.school.length)
  end

  def test_food_count
    @river.take_fish(@fish1)
    @river.take_fish(@fish2)
    @river.take_fish(@fish3)
    @river.take_fish(@fish4)
    @bear.catch_fish(@river, 2)
    assert_equal(2, @bear.food_count)

  end

end



#
# # Bears, River, Fish
#
# We are going to build a small ecosystem! We want to create an ecosystem made up of 3 parts: bears, river and fish. You will need a class for each of these. From this you can make instances and build your ecosystem.
#
# ## How Our Ecosystem Works
#
# - A river should have a name e.g. "Amazon"
# - A river should hold many fish
# - A fish should have a name
#
# - A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# - A bear should have an empty stomach ( maybe an array )
#
# - A bear should be able to take a fish from the river
# - A river should lose a fish when a bear takes a fish
#
# ## Extensions
#
# - A bear could have a roar method
# - A bear could have a food_count method
# - A river could have a fish_count method

require ("minitest/autorun")
require_relative("../river.rb")
require_relative("../fish.rb")



class RiverTest < Minitest::Test

  def setup
    @river = River.new("Danube")
    @fish1 = Fish.new("John")
    @fish2 = Fish.new("Paul")
    @fish3 = Fish.new("George")
    @fish4 = Fish.new("Ringo")
  end

  def test_has_name

    assert_equal("Danube", @river.name )
  end

  def test_has_fish
    assert_equal(0, @river.school.length)
  end

  def test_take_fish
    @river.take_fish(@fish1)
    assert_equal(1, @river.school.length)
  end

  def test_give_fish
    @river.take_fish(@fish1)
    @river.take_fish(@fish2)
    @river.take_fish(@fish3)
    @river.take_fish(@fish4)
    fish_taken=@river.give_fish(2)
    assert_equal(2, @river.school.length)
  end

  def test_fish_count
    @river.take_fish(@fish1)
    @river.take_fish(@fish2)
    @river.take_fish(@fish3)
    assert_equal(3, @river.fish_count)
  end

end

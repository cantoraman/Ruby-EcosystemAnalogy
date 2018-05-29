require ("minitest/autorun")
require_relative("../fish.rb")



class FishTest < Minitest::Test

  def test_has_name
    fish = Fish.new("Nemo")
    assert_equal("Nemo", fish.name)
  end





end

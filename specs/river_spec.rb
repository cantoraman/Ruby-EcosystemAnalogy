require ("minitest/autorun")
require_relative("../river.rb")



class RiverTest < Minitest::Test

def test_has_name
river = River.new("Danube")
assert_equal("Danube", river.name )
end









end

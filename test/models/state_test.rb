require 'test_helper'

class StateTest < ActiveSupport::TestCase
  test "I know my state fixtues" do
    assert_equal "North Carolina", states(:one).name
    assert_equal "NC", states(:one).abbreviation
    assert_equal "South Carolina", states(:two).name
    assert_equal "SC", states(:two).abbreviation
  end
end

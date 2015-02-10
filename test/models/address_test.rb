require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test "I know my address fixtures" do
    assert_equal "Sydney", addresses(:one).city
    assert_equal 29307, addresses(:one).zip
    assert_equal "Mt. Vernon", addresses(:two).city
    assert_equal 52314, addresses(:two).zip
  end

  test "addresses belong_to state" do # this might should be a has_one
    assert_equal "North Carolina", addresses(:one).state.name
    assert_equal "NC", addresses(:one).state.abbreviation
  end

  test "addresses belong_to contacts" do
    assert_equal "North Carolina", contacts(:one).addresses.first.state.name
    assert_equal "South Carolina", contacts(:two).addresses.first.state.name
  end
end

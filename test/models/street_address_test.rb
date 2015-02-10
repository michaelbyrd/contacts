require 'test_helper'

class StreetAddressTest < ActiveSupport::TestCase
  test "I know my street_addresses fixtures" do
    assert_equal "Apartment 4", street_addresses(:one).line
    assert_equal "42 wallabee way", street_addresses(:two).line
    assert_equal 1, street_addresses(:one).line_number
    assert_equal 2, street_addresses(:two).line_number
  end

  test "street_addresses belong_to addresses" do
    assert_equal "Apartment 4", addresses(:one).street_addresses.first.line
  end
end

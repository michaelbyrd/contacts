require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "I know my category fixtures" do
    assert_equal "Home", categories(:one).name
    assert_equal "Mobile", categories(:two).name
    assert_equal "Work", categories(:three).name
    assert_equal "Fax", categories(:four).name
  end
end

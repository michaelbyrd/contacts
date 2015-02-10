require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  test "I know my group fixtures" do
    assert_equal "Friends", groups(:one).name
    assert_equal "Family", groups(:two).name
  end

  test "Groups have_many contacts" do
    assert_equal "Douglas J Falcon", groups(:one).contacts.first.name
    assert_equal "Sammy", groups(:one).contacts[1].name
    assert_equal "Sammy", groups(:two).contacts.first.name
  end
end

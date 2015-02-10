require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test "I know my notes fixtures" do
    assert_equal "MyNote", notes(:one).text
    assert_equal "MySecondNote", notes(:two).text
  end

  test "Notes belong_to contacts" do
    assert_equal "MyNote", contacts(:one).notes.first.text
    assert_equal "MySecondNote", contacts(:two).notes.first.text
  end
end

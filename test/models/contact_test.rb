require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Contact has a name and a birthday" do
    date = Date.today
    c = Contact.create(name: "Michael Byrd", birthday: date)
    assert_equal "Michael Byrd", c.name
    assert_equal date, c.birthday
  end

  test "I know how to use fixture" do
    assert_equal "Michael Byrd", contacts(:one).name
    assert_equal "MyString", contacts(:two).name
  end
end

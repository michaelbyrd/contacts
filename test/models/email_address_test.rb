require 'test_helper'

class EmailAddressTest < ActiveSupport::TestCase
  test "I know my email_address fixtures" do
    assert_equal "michael@gmail.com", email_addresses(:one).email
    assert_equal "example@gmail.com", email_addresses(:two).email
    assert_equal "test@test.com", email_addresses(:three).email
  end

  test "Email_addresses belong_to contact" do
    assert_equal "michael@gmail.com", contacts(:one).email_addresses.first.email
    assert_equal "example@gmail.com", contacts(:two).email_addresses.first.email
  end

  test "Contacts can have multiple email_addresses" do
    assert_equal "michael@gmail.com", contacts(:one).email_addresses.first.email
    assert_equal "test@test.com", contacts(:one).email_addresses[1].email
  end
end

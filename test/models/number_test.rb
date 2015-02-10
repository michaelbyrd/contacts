require 'test_helper'

class NumberTest < ActiveSupport::TestCase
  test "I know my number fixtures" do
    assert_equal 1234567, numbers(:one).number
    assert_equal 1112222, numbers(:two).number
    assert_equal 9876543, numbers(:three).number
  end

  test "Numbers belong_to a contact" do
    assert_equal 1234567, contacts(:one).numbers.first.number
    assert_equal 1112222, contacts(:two).numbers.first.number
  end

  test "A contact can have multiple numbers" do
    assert_equal 1234567, contacts(:one).numbers.first.number
    assert_equal 9876543, contacts(:one).numbers[1].number
  end

  test "Numbers have a category" do
    assert_equal "Home", numbers(:one).category.name
    assert_equal "Mobile", numbers(:two).category.name
    assert_equal "Work", numbers(:three).category.name
  end
end

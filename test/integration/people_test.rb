require 'test_helper'

class PeopleTest < ActionDispatch::IntegrationTest
  fixtures :people

  test "the truth" do
    assert true
  end

  test "name" do
    assert_equal(people(:one).name, "MyString")
  end
end

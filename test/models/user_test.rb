require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "apple", email: "apple2439@gmail.com", gender: "1", grade: "1", lab: "sysken")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "  "
    assert_not @user.valid?
  end

  test "gender should be present" do
    @user.gender = ""
    assert_not @user.valid?
  end

  test "grade should be present" do
    @user.grade = ""
    assert_not @user.valid?
  end

  test "lab should be present" do
    @user.lab a = ""
    assert_not @user.valid?
  end





  # test "te truth" do
  #   assert true
  # end
end

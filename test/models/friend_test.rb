require "test_helper"

class FriendTest < ActiveSupport::TestCase
  def setup
    @friend = Friend.new(first_name: "UniqueFirstName", last_name: "UniqueLastName", email: "unique.email@example.com", address: "123 Unique St")
  end

  test "should be valid" do
    assert @friend.valid?
  end

  test "first name should be present" do
    @friend.first_name = ""
    assert_not @friend.valid?
  end

  test "last name should be present" do
    @friend.last_name = ""
    assert_not @friend.valid?
  end

  test "email should be present" do
    @friend.email = ""
    assert_not @friend.valid?
  end

  test "address should be present" do
    @friend.address = ""
    assert_not @friend.valid?
  end

  test "first name should be unique" do
    duplicate_friend = @friend.dup
    @friend.save
    assert_not duplicate_friend.valid?
  end

  test "last name should be unique" do
    duplicate_friend = @friend.dup
    @friend.save
    assert_not duplicate_friend.valid?
  end

  test "email should be unique" do
    duplicate_friend = @friend.dup
    @friend.save
    assert_not duplicate_friend.valid?
  end

  test "address should be unique" do
    duplicate_friend = @friend.dup
    @friend.save
    assert_not duplicate_friend.valid?
  end
end

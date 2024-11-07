require "test_helper"

class StudentTest < ActiveSupport::TestCase
  test "should validate presence of name" do
    student = Student.new
    assert_not student.valid?
    assert_equal ["can't be blank"], student.errors[:name]
  end

  test "should validate uniqueness of name" do
    old_student = students(:one)
    student = Student.new(name: old_student.name)
    assert_not student.valid?
    assert_equal ["has already been taken"], student.errors[:name]
  end
end

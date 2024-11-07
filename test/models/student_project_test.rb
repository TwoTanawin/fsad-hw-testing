require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
    @user = users(:one)
  end

  test "should get index without login" do
    get students_url
    assert_response :success
  end

  test "should get show without login" do
    get student_url(@student)
    assert_response :success
  end

  test "should redirect new when not logged in" do
    get new_student_url
    assert_redirected_to new_user_session_url
  end

  test "should redirect create when not logged in" do
    assert_no_difference('Student.count') do
      post students_url, params: { student: { name: "Test Student", studentid: "12345" } }
    end
    assert_redirected_to new_user_session_url
  end

  test "should redirect edit when not logged in" do
    get edit_student_url(@student)
    assert_redirected_to new_user_session_url
  end

  test "should redirect update when not logged in" do
    patch student_url(@student), params: { student: { name: "Updated Name" } }
    assert_redirected_to new_user_session_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference('Student.count') do
      delete student_url(@student)
    end
    assert_redirected_to new_user_session_url
  end
end

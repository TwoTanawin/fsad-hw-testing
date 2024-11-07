require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @project = projects(:one)
    @user = users(:one)
  end

  test "should redirect index when not logged in" do
    get projects_url
    assert_redirected_to new_user_session_url
  end

  test "should redirect show when not logged in" do
    get project_url(@project)
    assert_redirected_to new_user_session_url
  end

  test "should redirect new when not logged in" do
    get new_project_url
    assert_redirected_to new_user_session_url
  end

  test "should redirect create when not logged in" do
    assert_no_difference("Project.count") do
      post projects_url, params: { project: { name: "Test Project" } }
    end
    assert_redirected_to new_user_session_url
  end

  test "should redirect edit when not logged in" do
    get edit_project_url(@project)
    assert_redirected_to new_user_session_url
  end

  test "should redirect update when not logged in" do
    patch project_url(@project), params: { project: { name: "Updated Project" } }
    assert_redirected_to new_user_session_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference("Project.count") do
      delete project_url(@project)
    end
    assert_redirected_to new_user_session_url
  end
end

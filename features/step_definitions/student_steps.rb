# Given("I am a teacher") do
#   @user = FactoryBot.create(:user, role: :teacher)
#   login_as(@user, scope: :user)
# end

# Given("there is a project") do
#   @project = FactoryBot.create(:project, name: "Sample Project")
# end

# Given("I want to add a student to the project") do
#   @student = FactoryBot.create(:student, studentid: "S12345", name: "John Doe")
# end

# Given("I am signed in") do
#   login_as(@user, scope: :user)
# end

# When("I visit the projects page") do
#   visit projects_path
# end

# Then("I should see a link for the project") do
#   expect(page).to have_link(@project.name, href: project_path(@project))
# end

# When("I click the link for the project") do
#   click_link @project.name
# end

# Then("I should see the details of my project") do
#   expect(page).to have_content(@project.name)
# end

# Then("I should see a form to add a student") do
#   expect(page).to have_selector("form#new_student_project")
# end

# When("I submit the form") do
#   within("form#new_student_project") do
#     select @student.name, from: "student_id"
#     click_button "Add Student"
#   end
# end

# Then("I should see the student added to the project") do
#   expect(page).to have_content(@student.name)
# end

Given(/^I am a teacher$/) do
  @user = FactoryBot.create(:user, :teacher)
  # login_as(@user, scope: :user)
end

Given(/^there is a project$/) do
  # pending
  @project = FactoryBot.create(:project)
end

Given(/^I want to add a student to the project$/) do
  # pending
  @student = FactoryBot.build(:student)
end

Given(/^I am signed in$/) do
  # pending
  visit '/users/sign_in'
  save_and_open_page
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
end

When(/^I visit the projects page$/) do
  # pending
  visit '/projects'
end

Then(/^I should see a link for the project$/) do
  # pending
  expect(page).to have_link('Show', href: project_path(@project))
end

When(/^I click the link for the project$/) do
  # pending
  find_link('Show', href: project_path(@project)).click
end

Then(/^I should see the details of my project$/) do
  # pending
  # save_and_open_page
  # puts page.html
  expect(page).to have_content("Name: #{@project.name}")
  expect(page).to have_content("Url: #{@project.url}")
end

And(/^I should see a form to add a student$/) do
  # pending
  expect(page).to have_selector('form#new_student')
end

When(/^I submit the form$/) do
  pending
end

Then(/^I should see the student added to the project$/) do
  pending
end

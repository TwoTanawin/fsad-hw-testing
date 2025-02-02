Feature: Student
  In order to keep track of which students are working on which projects, as a teacher, I want to associate students with projects.

  Scenario: Add student to a project
    Given I am a teacher
    And there is a project
    And I want to add a student to the project
    And I am signed in
    When I visit the projects page
    Then I should see a link for the project
    When I click the link for the project
    Then I should see the details of my project
    And I should see a form to add a student
    When I submit the form
    Then I should see the details of my project
    And I should see the student added to the project



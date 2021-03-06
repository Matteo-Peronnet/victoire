@mink:selenium2 @reset-schema @alice(Page) @alice(Error404)
Feature: Display the error's modal

  Background:
    Given I maximize the window
    When I am on homepage
    And I open the 404 menu
    And I wait 1 second

  Scenario: I can view the 404 error modal's content
    Then the modal title should be "404 ERRORS"
    And I should see text matching "Routes"
    And the list "route-list" should contain 3 element
    And I should see text matching "Files"

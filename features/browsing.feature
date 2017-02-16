Feature: browsing

  As a user wanting to but tickets from EventBrite
  I want to create a user.

  Scenario: I can go to the Eventbrite page and sign up
    Given I go to the Eventbrite signup page
    When I sign up for an account
    And I go to account page to delete my account
    Then I have successfully closed the account
Feature: Close Account

  Scenario: I have an account I want to delete
    Given I go to the Eventbrite signup page
    When I successfully log in and delete my account
    Then I have successfully closed the account
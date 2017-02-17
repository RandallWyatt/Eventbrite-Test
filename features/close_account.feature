Feature: Close Account

  Scenario: I have an account I want to delete
    Given I log in
    When I delete my account
    Then I have successfully closed the account
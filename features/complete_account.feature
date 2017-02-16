Feature: Complete Account

  Scenario: I want to sign up for Eventbrite and I need to complete my profile
    Given I go to the Eventbrite signup page
    When I sign up for an account
    Then I go to account page to complete my account


    Scenario: I have an account I want to delete
      Given I go to the Eventbrite signup page
      When I successfully log in and delete my account
      Then I have successfully closed the account
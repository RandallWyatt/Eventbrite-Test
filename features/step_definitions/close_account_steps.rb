When(/^I delete my account$/) do
  visit(Account).close_account_after_signup
end

Given(/^I log in$/) do
  visit(SignUp).login_action
end
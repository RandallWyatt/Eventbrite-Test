When(/^I delete my account$/) do
  visit(Account).close_account_action
end

Given(/^I log in$/) do
  visit(SignUp).login_action
end
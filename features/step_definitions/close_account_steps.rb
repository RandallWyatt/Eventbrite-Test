When(/^I successfully log in and delete my account$/) do
  visit(SignUp).login_action
  visit(Account).close_account_action
end
Given /^I go to the Eventbrite signup page$/ do
  visit SignUp
end

When(/^I sign up for an account$/) do
  on(SignUp) do |home_page|
    home_page.sign_up_link
    home_page.enter_information
  end
end

And(/^I go to account page to delete my account$/) do
  visit(Account).close_account_action
end


Then(/^I have successfully closed the account$/) do
  @current_page.should_contain_text 'Your account was closed. Thank you for using us.'
end

When(/^I successfully log in and delete my account$/) do
  visit(SignUp).login_action
  visit(Account).close_account_action
end



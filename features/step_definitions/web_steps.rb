Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content "What is your name?"
end

Given(/^I'm on the registration$/) do
  visit '/registration'
end

When(/^I input my "([^"]*)"$/) do |arg1|
  fill_in(arg1, :with => 'Bob')
end

When(/^I input_two my "([^"]*)"$/) do |arg1|
  fill_in(arg1, :with => '9')
end

When(/^I input_three my "([^"]*)"$/) do |arg1|
  fill_in(arg1, :with => '1')
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_button "Submit"
end

Then(/^I should be on the "([^"]*)"$/) do |arg1|
  expect(page).to have_content 'Welcome Bob'
end

When(/^the "([^"]*)" field is empty$/) do |arg1|
  fill_in(arg1, :with => nil)
end

Then(/^I should see_a "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end





Given(/^I'm on the game_page$/) do
  
end

When(/^the board size is "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see_b "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
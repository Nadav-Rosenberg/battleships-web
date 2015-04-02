Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Given(/^I'm on the registration$/) do
  visit '/registration'
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_button arg1
end

Given(/^I'm on the registration page$/) do
  visit '/registration'
end

When(/^I click_a "([^"]*)"$/) do |arg1|
  click_button "Submit"
end

Then(/^I should see_a "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

When(/^I input "([^"]*)" into the "([^"]*)" field$/) do |arg1, arg2|
  fill_in(arg2, :with => arg1)
end

Capybara.session_name = :phoebe
p Capybara.session_name

Given(/^I go to the new book page$/) do
  visit new_book_path
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, :with => value
end

When(/^I press "(.*?)"$/) do |create|
  click_button create
end

Then(/^I should be on the book list page$/) do
  visit books_path
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

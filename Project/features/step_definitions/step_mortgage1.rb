require File.expand_path(__FILE__+"/../support/driver_factory.rb")
require File.expand_path(__FILE__+"/../support/mortgage_page.rb")
require File.expand_path(__FILE__+"/../support/page_factory.rb")


Given(/^I go to mortgage application$/) do
  DriverFactory::getBrowserDriver().goto(ENV['URL'])
end

When(/^enter mortgage payment details$/) do
  puts MortgagePage.class.name
  # PageFactory.getPageObject(MortgagePage.class.name)
end

And(/^click on calculate button$/) do
  pending
end

Then(/^mortgage repayment summary details should be displayed$/) do
  pending
end

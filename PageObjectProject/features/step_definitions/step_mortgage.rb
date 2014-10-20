require File.expand_path(__FILE__+"/../../support/driver_factory.rb")
require File.expand_path(__FILE__+"/../../support/mortgage_page.rb")
require File.expand_path(__FILE__+"/../../support/page_factory.rb")


Given(/^I go to mortgage application$/) do
  DriverFactory::getBrowserDriver().goto(ENV['URL'])
end

When(/^enter mortgage payment details$/) do
 @mortgagePageObject = PageFactory.getPageObject("MortgagePage")
 @mortgagePageObject.homeValue = "40000"
 @mortgagePageObject.loanAmount = "30000"
 @mortgagePageObject.interestRate = '5'
 @mortgagePageObject.loanTerm = '15'
 @mortgagePageObject.startMonth = 'Jan'
 @mortgagePageObject.startYear = '2015'
 @mortgagePageObject.propertyTax = '1.25'
 @mortgagePageObject.pmi = '0.5'
end

And(/^click on calculate button$/) do
  @mortgagePageObject.calculate
  $Log.info("one operation is completed")
end

Then(/^mortgage repayment summary details should be displayed$/) do

  @mortgagePageObject.monthlyPayment_element.when_present do
    puts  @mortgagePageObject.monthlyPayment
  end

  monthlyPayment = @mortgagePageObject.monthlyPayment
  monthlyPayment.should == '$990'
  $Log.info("monthly payment value: #{monthlyPayment}")
end

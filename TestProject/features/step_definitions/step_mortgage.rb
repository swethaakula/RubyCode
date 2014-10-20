require File.expand_path(__FILE__+"/../../support/DriverFactory.rb")
require File.expand_path(__FILE__+"/../../support/YmlHelper.rb")
#require 'rspec'

include YmlHelper

Given(/^I go to mortgage application$/) do
     puts "Env variable " + ENV['URL']
  DriverFactory.getDriver().goto(ENV['URL'])  
end

When(/^enter mortage payment details$/) do
   	mortgageDataMapArray=YmlHelper::getMortgageTestData
    	rowMap = mortgageDataMapArray[0]
    	
	DriverFactory.getDriver().text_field(:name => 'param[homevalue]').set(rowMap['home_value'])
	DriverFactory.getDriver().text_field(:name => 'param[principal]').set(rowMap['loan_amount'])
	DriverFactory.getDriver().text_field(:name => 'param[interest_rate]').set(rowMap['interest_rate']) 
	DriverFactory.getDriver().text_field(:name => 'param[term]').set(rowMap['loan_term']) 
	DriverFactory.getDriver().select_list(:name => 'param[start_month]').select rowMap['start_month']
	DriverFactory.getDriver().select_list(:name => 'param[start_year]').select rowMap['start_year']
	DriverFactory.getDriver().text_field(:name => 'param[property_tax]').set(rowMap['property_tax']) 
	DriverFactory.getDriver().text_field(:name => 'param[pmi]').set(rowMap['PMI']) 
  
 end

When(/^click on calculate buuton$/) do
 	DriverFactory.getDriver().button(:xpath => '//input[@value="Calculate"]').click 
end

Then(/^mortgage repayment summary details should be displayed$/) do
	mortgageDataMapArray=YmlHelper::getMortgageTestData
    	rowMap = mortgageDataMapArray[0]
  	act_amount=DriverFactory.getDriver().element(:xpath => '//table[@id="summary"]/tbody/tr[4]/td/h3').text	
  	act_amount.should == rowMap['monthly_pay']
end

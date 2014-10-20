require "watir-classic"
require "rubygems"
require "cucumber"
# require "selenium-webdriver"

# ENV[ 'PATH' ] = ('E:/Lib/chromedriver.exe' << ENV[ 'PATH' ]).freeze

include Mortgage

Given(/^open the "(.*?)"$/) do |browser|
    case browser.to_s.strip
      when "Internet Explorer"
        @browser=Watir::Browser.new
      when "Google Chrome"
        @browser= Watir::Browser.new :chrome, :switches => %w[--ignore-certificate-errors --disable-popup-blocking --disable-translate]
      when "FireFox"
        @browser=Watir::Browser.new :firefox
      else
        puts "The requested browser is not IE,Chrome or firefox"
    end

end

When(/^user navigates to "(.*?)"$/) do |url|
  @browser.goto(url)
end

Then(/^verify if page is loaded successfully$/) do
  if @browser.text.include? "Mortgage Calculator"
    puts "test is passed"
  else
    puts "test is failed"
  end

end

# And(/^close the browser$/) do
#   @browser.quit
# end

And(/^user enters Home Value as (\d+)$/) do |home_value|
  inputTOTextBox("param[homevalue]",home_value)
end


And(/^user selects Credit Profile as "(.*)"$/) do |profile|
  @browser.select_list(:name,"param[credit]").select(profile)
end

And(/^user enters Loan amount as (\d+)$/) do |loan_amount|
 # @browser.text_field(:name,"param[principal]").set(loan_amount)
  inputTOTextBox("param[principal",loan_amount)
end

And(/^user selects Loan Purpose as "(.*)"$/) do |loan_purpose|
 @browser.select_list(:name,"param[rp]").select(loan_purpose)
end

And(/^user enters Interest rate as (\d+)$/) do |interest_rate|
  #@browser.text_field(:name,"param[interest_rate]").set(interest_rate)
  inputTOTextBox("param[interest_rate]",interest_rate)
end

And(/^user enters Loan term as (\d+) years$/) do |term|
  #@browser.text_field(:name,"param[term]").set(term)
  inputTOTextBox("param[term]",term)
end


When(/^user clicks on Calculate Button$/) do
  @browser.button(:xpath,"//input[@value='Calculate']").click

  end

#Then(/^verify if Repayment amount is (\$\d+\.\d+) $/) do |exp_amount|
Then(/^verify if Repayment amount is "(\$[\d+\,?]+\.?\d*)"$/) do |exp_amount|
  puts "exp_amount is " +exp_amount
  act_amount=@browser.element(:xpath,"//table[@id='summary']/tbody/tr[4]/td/h3").text
  puts "act_amount is " +act_amount
  if(act_amount == exp_amount)
    puts "test is passed"
  else
    puts "test is failed"
  end
end

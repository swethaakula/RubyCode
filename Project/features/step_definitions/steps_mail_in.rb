require "watir-classic"
require "rubygems"
require "cucumber"

Given(/^The user opens the Internet Explorer$/) do
  @browser = Watir::Browser.new :ie
  @browser.maximize
  #@browser.speed = :zippy
end

And(/^User navigates to "([^"]*)" $/) do |url|
  @browser.goto(url)
end

When(/^User clicks on Register Now button$/) do
  @browser.button(:class,"registernow").click
end

And(/^User enters Name as "([^"]*)"$/) do |name|
  enterValuesInTextBox("fname",name)
end

def enterValuesInTextBox(webElement,name)
  @browser.text_field(:id,webElement).set(name)
end

And(/^User selects day as "(\d{2})"$/) do |day|
  @browser.select_list(:id,"day").select(day)
end

And(/^User selects month as "([^"]*)"$/) do |month|
  @browser.select_list(:id,"month").select(month)
end

And(/^User selects year as "([^"]*)"$/) do |year|
  @browser.select_list(:id,"year").select(year)
end

And(/^User enters username as "([^"]*)"$/) do |username|
  @browser.radio(:xpath,"(//input[@name='radiousername'])[2]").set
end

And(/^User enters password as "([^"]*)"$/) do |password|
  @browser.text_field(:id,"password").set(password)
end


And(/^User enters Confirm password as "([^"]*)"$/) do |cPassword|
  @browser.text_field(:id,"repassword").set(cPassword)
end

And(/^User enters E\-mail as "([^"]*)"$/) do |eMail|
  @browser.text_field(:id,"altemail").set(eMail)
end

And(/^User clicks on continue button$/) do
  Watir::Wait.until(30){@browser.span(:class,"gR_10").exist?}
  @browser.button(:id,"imageField").click
end

And(/^User selects Female radiobutton$/) do
  Watir::Wait.until(30){@browser.radio(:id,"gender").exist?}
  radioButtons=@browser.radios(:id,"gender")
  radioButtons.each do |radio|
    if(radio.value=="2")
      radio.set
    end
  end
end


And(/^User selects country as "([^"]*)"$/) do |country|
  @browser.select_list(:id,"mcountry").select(country)
end

And(/^User selects City as "([^"]*)"$/) do |city|
  @browser.select_list(:id,"mcity").select(city)
end

And(/^User selects Occupation as "([^"]*)"$/) do |occupation|
  @browser.select_list(:id,"occupation").select(occupation)
end


And(/^User checks the checkbox I agree to the Terms and conditions$/) do
  @browser.checkbox(:id,"terms").set
end


Then(/^User clicks Create Account button$/) do
  @browser.button(:xpath,"//input[@onclick='saveuserdata();']").click
end
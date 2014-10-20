require "watir-classic"
require "rubygems"
require "date"

Given(/^The user opens the "([^"]*)"$/) do |browser|
  puts browser
  case browser.to_s.strip
    when "Internet Explorer"
      puts "ie"
      @browser=Watir::Browser.new :ie
    # when "Google Chrome"
    #   @browser= Watir::Browser.new :chrome, :switches => %w[--ignore-certificate-errors --disable-popup-blocking --disable-translate]
    # when "FireFox"
    #   puts "ff"
    #   @browser=Watir::Browser.new :firefox
    else
      puts "The requested browser is not IE,Chrome or firefox"
  end
end

And (/^User navigates to "([^"]*)"$/) do |url|
  @browser.goto(url)
end


When(/^User selects "([^"]*)" trip$/) do |trip|
  @browser.radio(:value,'OneWay').set
end

And(/^User selects Leaving from\.\.\. as "([^"]*)"$/) do |leaving_city|
  @browser.span(:id,"ctl00_mainContent_ddl_originStation1_CTXTaction").click
  @browser.link(:text,leaving_city).click
end

And(/^User selects Going To\.\.\. as "([^"]*)"$/) do |going_city|
  puts going_city
  @browser.span(:id,"ctl00_mainContent_ddl_destinationStation1_CTXTaction").click
  @browser.span(:id,"ctl00_mainContent_ddl_destinationStation1_CTXTaction").click
 # @browser.span(:id,"ctl00_mainContent_ddl_destinationStation1_CTXTaction").send_keys("BLR");

 # @browser.text_field(:id,"ctl00_mainContent_ddl_destinationStation1_CTXT").send_keys(going_city)
sleep 1000
#   text =@browser.link(:text,going_city)

   Watir::Wait.until(30){ @browser.link(:text,going_city).exists? }

 # wait.until { driver.find_element(:css => "#HPSearchInput > form > input.ch-  btn.searchBtn").displayed? }

   @browser.link(:text,going_city).click;

end


And(/^user selects Date as "([^"]*)"$/) do |date_string|
  date_array = Date_string.split(" ")
  date = Date.parse(date_string)
  @browser.button(:class,"ui-datepicker-trigger").click
  appMonth=@browser.span(:class,"ui-datepicker-month").text
  appYear=@browser.span(:class,"ui-datepicker-year").text
  if(date_array[1].equal?(appMonth))
    if(date_array[2].equal?(appYear))
      @browser.link(:text,date.day).click
    end
  end
end
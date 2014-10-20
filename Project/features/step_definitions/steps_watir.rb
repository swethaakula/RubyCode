require 'rubygems'
require 'watir-classic'
#require 'watir-webdriver'


@browser = nil

Given /^the user opens Internet Explorer$/ do
    @browser = Watir::Browser.new
    @browser.maximize
    @browser.speed = :slow
endcd

When /^the user navigates to (.*)$/ do |url|
    @browser.goto(url)
end

When /^the user enters (.*) as (.*)$/ do |text_field_name, value_to_enter|
    case text_field_name.to_s.strip.upcase
        when "SEARCH TEXT"
            @browser.text_field(:name, "q").set value_to_enter
        when "WHAT IS YOUR NAME?"
            @browser.text_field(:id, "entry_0").set value_to_enter
        when "YAHOO SEARCH TEXT"
            @browser.text_field(:name, "yahoo_entry_0").set value_to_enter
        else
            # type code here
    end
end

When /^the user clicks the (.*) button$/ do |button|
    case button.to_s.strip.upcase
        when "SEARCH"
            @browser.button(:name, "btnK").click
        when "SUBMIT"
            @browser.button(:value, "Submit").click
        else

    end
end

And /^the user selects (.*) as (.*)$/ do |select_box_name, value_to_select|
    case select_box_name.to_s.strip.upcase
        when "What language does Watir-WebDriver use?".upcase
            @browser.select_list(:id, 'entry_1').select value_to_select
        else

    end
end

And /^the user chooses (.*) as (.*)$/ do |radio_button_name, value|
    case radio_button_name.to_s.strip.upcase
        when "What is ruby?".upcase
            #@ie.label(:text, radio_button_name).parent.radio(:value, value).set
            @browser.radio(:value, value).set
        else

    end
end

And /^the user sets (.*) as (.*)$/ do |check_box_name, value|
    case check_box_name.to_s.strip.upcase
        when "What versions of ruby?".upcase
            #@ie.label(:text, check_box_name).parent.checkbox(:value, value).set
            @browser.checkbox(:value, value).set
        else

    end
end

Then /^the user verifies the (.*) results$/ do |search_engine|
    Watir::Wait.until(10) { @browser.link(:text, "Watir.com | Web Application Testing in Ruby").exists? }
    @browser.link(:text, "Watir.com | Web Application Testing in Ruby").click
end


Then /^the page must have the message "(.*)"$/ do |message|
    Watir::Wait.until(10) { @browser.div(:class, "ss-custom-resp").exists? }
    fail if not @browser.div(:class, "ss-custom-resp").text.to_s.upcase.eql? message.upcase
end

Then /^the error message "(.*)" appears$/ do |message|
    Watir::Wait.until(10) { @browser.div(:class, "errorheader").exists? }
    fail if not @browser.div(:class, "errorheader").text.to_s.upcase.eql? message.upcase
end


# require "rspec/expectations"

Given /^I have entered "([^"]*)" into the query$/ do |term|
  @browser ||= Watir::Browser.new :firefox
  @browser.goto "google.com"
  @browser.text_field(:name => "q").set term
end

When /^I click "([^"]*)"$/ do |button_name|
  @browser.button.click
end

Then /^I should see some results$/ do
  @browser.div(:id => "resultStats").wait_until_present
  @browser.div(:id => "resultStats").exists?
  @browser.close
end

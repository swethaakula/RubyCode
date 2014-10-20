require 'watir-webdriver'
require 'rubygems'

module DriverFactory
  def self.getBrowserDriver
    @@browser ||= watir::Browser.new :chrome
  end
end

require 'watir-webdriver'
require 'rubygems'

module DriverFactory
  def self.getBrowserDriver
    @@browser ||= Watir::Browser.new :chrome
  end
end

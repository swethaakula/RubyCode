require 'rubygems'
require 'watir-webdriver'

class DriverFactory
	def self.getDriver
		@@browser ||= Watir::Browser.new :chrome	
	end
end





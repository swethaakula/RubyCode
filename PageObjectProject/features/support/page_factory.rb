
class PageFactory
 def self.getPageObject(name)
   if name.eql?("MortgagePage")
     @@mortgagePageObject = MortgagePage.new(DriverFactory::getBrowserDriver())
     return @@mortgagePageObject
   end
 end
end
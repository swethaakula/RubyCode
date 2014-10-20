require 'yaml'

module YmlHelper
	def self.getMortgageTestData
		mortgageTestData = YAML.load_file(__FILE__+"/../../testdata/mortgage_data.yml")		
		return mortgageTestData['mortgage_data']		  
	end
end

#YmlHelper::getMortgageTestData
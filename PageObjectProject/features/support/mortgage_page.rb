require 'page-object'
class MortgagePage
  include PageObject
  text_field(:homeValue, :name => 'param[homevalue]')
  text_field(:loanAmount, :name => 'param[principal]')
  text_field(:interestRate, :name => 'param[interest_rate]')
  text_field(:loanTerm,:name => 'param[term]')
  select_list(:startMonth,:name => 'param[start_month]')
  select_list(:startYear, :name => 'param[start_year]')
  text_field(:propertyTax, :name => 'param[property_tax]')
  text_field(:pmi,:name => 'param[pmi]')
  button(:calculate, :css => 'input[value="Calculate"]')
  h3(:monthlyPayment, :xpath => '//table[@id="summary"]/tbody/tr[4]/td/h3')
end
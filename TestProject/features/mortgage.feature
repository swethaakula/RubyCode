Feature: mortgage payment feature

Scenario: Verify mortgage monthly repayment amount
Given I go to mortgage application
When enter mortage payment details
And click on calculate buuton
Then mortgage repayment summary details should be displayed 
 
  


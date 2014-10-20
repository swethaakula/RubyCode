Feature: Mortgage

#  Scenario: Open Mortgage Calculator
#    Given open the "Internet Explorer"
#    When user navigates to "www.mortgagecalculator.org"
#    Then verify if page is loaded successfully
#     # And close the browser
#
#  Scenario Outline: Verify Mortgage Repayment Amount
#    Given open the "<browser>"
#      And user navigates to "<url>"
#      And user enters Home Value as <home_value>
#      And user selects Credit Profile as "<profile>"
#      And user enters Loan amount as <loan_amount>
#      And user selects Loan Purpose as "<loan_purpose>"
#      And user enters Interest rate as <interest_rate>
#      And user enters Loan term as <term> years
#    When user clicks on Calculate Button
#    Then verify if Repayment amount is "<exp_amount>"
#      #And close the browser
#  Examples:
#    | browser       | url                        | home_value | profile   | loan_amount | loan_purpose | interest_rate | term | exp_amount |
#    | Google Chrome | www.mortgagecalculator.org | 300000     | Excellent | 200000      | New Purchase | 3             | 10   | $2,243.71  |
#    #| Internet Explorer | www.mortgagecalculator.org | 150000 | Excellent | 75000       | New Purchase | 4             |8     | $1,070.45  |

  Scenario: Verify mortgage monthly repayment amount
    Given I go to mortgage application
    When enter mortgage payment details
    And click on calculate button
    Then mortgage repayment summary details should be displayed







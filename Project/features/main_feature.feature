@@file_name
Feature: Addition
  In order to avoid silly mistakes
  As a math idiot
  I want to be told the sum of two numbers

  Scenario: Add two numbers
    Given I have entered @number1 into the calculator
    And I have entered @number2 into the calculator
    When I press Add
    Then the result should be @total1 on the screen

  Scenario: Multiplication After Addition
    Given the total is @total1
    When multiply it with @number3
    Then the result should be @total2 on the screen

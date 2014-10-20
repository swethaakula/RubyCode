Feature: Addition
    Adding two numbers

    Scenario: Adding two numbers
        Given I have entered 50 into the calculator
            And I have entered 30 into the calculator
        When I press Add
        Then the result should be 80 on the screen
@all
Feature: Watir Demo

    @positive_case
    Scenario: Fill up the form with values
        Given the user opens Internet Explorer
            And the user navigates to bit.ly/watir-webdriver-demo
        When the user enters What is your name? as Name
            And the user selects What language does Watir-WebDriver use? as Ruby
            And the user chooses What is ruby? as A gem
            And the user sets What versions of ruby? as 1.8.7
            And the user clicks the Submit button
        Then the page must have the message "Thank you for playing with Watir-WebDriver"

    @negative_case
    Scenario: Do not fill the name
        Given the user opens Internet Explorer
            And the user navigates to bit.ly/watir-webdriver-demo
        When the user selects What language does Watir-WebDriver use? as Ruby
            And the user chooses What is ruby? as A gem
            And the user sets What versions of ruby? as 1.8.7
            And the user clicks the Submit button
        Then the error message "Looks like you have a question or two that still needs to be filled out." appears

    @outline
    Scenario Outline: Fill up the form with values 1
        Given the user opens Internet Explorer
            And the user navigates to bit.ly/watir-webdriver-demo
        When the user enters What is your name? as <Name>
            And the user selects What language does Watir-WebDriver use? as <Language>
            And the user chooses What is ruby? as <what_is_ruby>
            And the user sets What versions of ruby? as <Version>
            And the user clicks the Submit button
        Then the page must have the message "Thank you for playing with Watir-WebDriver"

    Examples:
    | Name      | Language  | what_is_ruby | Version |
    | Name 1    | Java      | A gem        | 1.8.7   |
 #   | Name 1    | Ruby      | Both         | 1.9.2   |

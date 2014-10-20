Feature: Google

  Scenario: Search Google
    Given the user opens Internet Explorer
    And the user navigates to www.google.com
    And the user enters Search text as Cucumber Water
    When the user clicks the Search button
    Then the user verifies the Google results


  Scenario: Search for a term
    Given I have entered "watir" into the query
    When I click "search"
    Then I should see some results


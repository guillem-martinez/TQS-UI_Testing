Feature: Changes the currency used in the page

  Scenario: The currency is changed correctly
    Given I go to the home page
    When I click on "ig-currency-selected" classButton
    And I click on "$" button
    And I wait 2 seconds
    Then I should see a "USD" text


  Scenario: URL changes as the currency does
    Given I go to the home page
    When I click on "ig-currency-selected" classButton
    And I click on "$" button
    And I wait 2 seconds
    Then I go to the page "https://www.instant-gaming.com/es/?currency=USD"


  Scenario: currency stay still when we navigate through different pages
    Given I go to the home page
    When I click on "ig-currency-selected" classButton
    And I click on "$" button
    And I wait 2 seconds
    And I click on "Football Manager 2022" game
    #And I wait 2 seconds
    Then I should see a "$62" text
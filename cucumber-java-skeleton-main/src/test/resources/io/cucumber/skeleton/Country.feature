Feature: Tests the change of the region
  Checks if when the region is changed in the main page
  All the elements in the web are changed

  Scenario:URL changes to the concrete region
    Given I go to the home page
    And I click on "ig-language-selected" classButton
    When I click on "it" language
    And I wait 2 seconds
    Then I go to the page "https://www.instant-gaming.com/it/"

  Scenario:The language is correctly changed
    Given I go to the home page
    And I click on "ig-language-selected" classButton
    When I click on "it" language
    And I wait 2 seconds
    Then I should see a "Giochi del momento" text
    And I should see a "Top preordini" text

  Scenario:The language is the same when we navigate through different pages
    Given I go to the home page
    And I click on "ig-language-selected" classButton
    When I click on "it" language
    And I wait 2 seconds
    And I click on "Football Manager 2022" game
    Then I should see a "Informazioni sul gioco" text
    And I should see a "Cosa c’è da sapere" text
Feature: Check if the navigation between categories is correctly done

  Scenario: My website can be browsed
    When I go to the home page
    Then I should see a "Instant Gaming" button

  Scenario: I try to go to steam
    Given I go to the home page
    And I click on "PC" button
    When I click on "Steam" button
    Then I go to the page "https://www.instant-gaming.com/es/juegos/steam/"


  Scenario: I try to go to Origin
    Given I go to the home page
    And I click on "PC" button
    When I click on "Origin" button
    Then I go to the page "https://www.instant-gaming.com/es/juegos/origin/"

  Scenario: I try to go to Rockstar
    Given I go to the home page
    And I click on "PC" button
    When I click on "Rockstar" button
    Then I go to the page "https://www.instant-gaming.com/es/juegos/rockstar/"
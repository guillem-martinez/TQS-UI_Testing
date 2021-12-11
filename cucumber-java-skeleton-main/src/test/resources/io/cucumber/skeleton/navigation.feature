Feature: Check if the navigation between categories is correct

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

  Scenario: I try to go to RockStar
    Given I go to the home page
    And I click on "PC" button
    When I click on "Rockstar" button
    Then I go to the page "https://www.instant-gaming.com/es/juegos/rockstar/"
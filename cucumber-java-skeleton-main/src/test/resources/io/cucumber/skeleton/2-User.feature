Feature: Tests User options when a User is logged in.

  Scenario: I can access to the Support
    Given I go to the home page
    And I click on "ig-responsive-menu-button" IdButton
    When I click on "Soporte" button
    And I wait 2 seconds
    Then I go to the page "https://www.instant-gaming.com/es/contactanos/"
    And I should see a "Preguntas frecuentes" text

  Scenario: I can change my public profile URL
    Given I go to the home page
    And I click on "ig-responsive-menu-button" IdButton
    When I click on "Mi perfil público" button
    And I wait 2 seconds
    And I click on "ig-profile-edit" aButton
    And I write "TQSBielGuillem"
    And I wait 2 seconds
    And I click on Aceptar
    And I wait 2 seconds
    Then I go to the page "https://www.instant-gaming.com/es/user/TQSBielGuillem"

  Scenario: I log out
    Given I go to the home page
    And I click on "ig-responsive-menu-button" IdButton
    When I click on "Desconectarse" button
    And I wait 2 seconds
    And I click on "ig-responsive-menu-button" IdButton
    #El botó "Mi cuenta" indica que no estem loggejats en la web
    Then I should see a "Mi cuenta" button
Feature: Tests the login of the page


  Scenario: I login with an existing account
    Given I go to the home page
    #Boton desplegable del menu de usuario
    And I click on "ig-responsive-menu-button" IdButton
    When I click on "Mi cuenta" button
    And I introduce the credentials email: "bielbardaji123@gmail.com" password: "bielguillem1234"
    And I click on OkButton
    And I go to the home page
    And I click on "ig-responsive-menu-button" IdButton
    Then I should see a "Mi perfil público" button

  Scenario: I login with an unexisting account
    Given I go to the home page
    #Boton desplegable del menu de usuario
    And I click on "ig-responsive-menu-button" IdButton
    When I click on "Mi cuenta" button
    And I introduce the credentials email: "tqs@gmail.com" password: "987654321"
    And I click on OkButton
    Then I should see the alert


Feature: Test the shopping process.

  Scenario: I delete a product of the wishlist
    Given  I go to the home page
    And I log in
    And I wait 2 seconds
    And I click on "Farming Simulator 22" game
    And I wait 2 seconds
    And I click on "ig-product-main-panel-addwishlist" IdButton
    And I wait 1 seconds
    And I click on "ig-responsive-menu-button" IdButton
    And I click on "ig-logged-link ig-logged-link-wishlist " aButton
    And I wait 2 seconds
    When I click on "remove" aButton
    And I wait 1 seconds
    And I accept the alert
    And I wait 1 seconds
    Then I should not see a "Farming Simulator 22" text

  #Al afegir un producte a la wishlist no el podem reafegir per lo que aquest escenari nomes serveix
  #quan s'executa el primer cop (o els cops imparells) amb el mateix joc.
  #Com a solució hem trobat que cada cop que es vulgui testejar aquest sccenario anar canviant
  #el joc que s'afegeix a la wishlist. Et deixem una llista de jocs per si vols testejar varies vegades.
  #Football Manager 2022 - Battlefield 2042 - FIFA 22 - God of War - Age of Empires IV
  Scenario: I add a product to the wishlist
    Given  I go to the home page
    #And I log in
    #And I wait 2 seconds
    And I click on "Football Manager 2022" game
    And I wait 2 seconds
    When I click on "ig-product-main-panel-addwishlist" IdButton
    And I wait 1 seconds
    And I click on "ig-responsive-menu-button" IdButton
    And I click on "ig-logged-link ig-logged-link-wishlist " aButton
    And I wait 2 seconds
    Then I should see a "Football Manager 2022" text

  Scenario: I buy the product
    Given I go to the home page
    #And I log in
    #And I wait 2 seconds
    And I click on "Football Manager 2022" game
    And I wait 2 seconds
    When I click on "Comprar" button
    And I wait 2 seconds
    Then I should see a "Resumen del pedido" text
    And I should see a "Football Manager 2022" text
    And I should see a "Pagar" button

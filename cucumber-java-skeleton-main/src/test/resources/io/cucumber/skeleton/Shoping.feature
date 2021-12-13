Feature: Test the shopping process.

  Scenario: I add a product to the wishlist
    Given  I go to the home page
    And I log in
    And I wait 2 seconds
    And I click on "Football Manager 2022" game
    And I wait 2 seconds
    When I click on "ig-responsive-menu-button" IdButton
    And I click on "ig-product-main-panel-addwishlist" IdButton
    And I wait 1 seconds
    And I click on "Whishlist" button
    And I wait 2 seconds
    Then I should see a "Football Manager 2022" text

  Scenario: I delete a product of the wishlist
    Given  I go to the home page
    And I log in
    And I wait 2 seconds
    And I click on "Football Manager 2022" game
    And I wait 2 seconds
    And I click on "ig-responsive-menu-button" IdButton
    And I click on "ig-product-main-panel-addwishlist" IdButton
    And I wait 1 seconds
    And I click on "Whishlist" button
    And I wait 2 seconds
    When I click on "remove" aButton
    And I wait 1 seconds
    And I accept the alert
    Then I should not see a "Football Manager 2022" text

  Scenario: I buy the product
    Given I go to the home page
    And I log in
    And I wait 2 seconds
    And I click on "Football Manager 2022" game
    And I wait 2 seconds
    When I click on "Comprar" button
    And I wait 1 seconds
    Then I should see a "Resumen del pedido" text
    And I should see a "Footbal Manager 2022" text
    And I should see a "Pagar" button

Feature: Search products in the page

  Scenario:URL changes to the search
    Given I go to the home page
#It is not a button, it's the search bar
    And I click on "ig-header-search-box-input" IdButton
    When I write on the search bar "FIFA 22"
    And I click on "ig-header-search-box-submit" IdButton
    Then I go to the page "https://www.instant-gaming.com/es/busquedas/?q=FIFA+22"


  Scenario: Page doesn't found results
    Given I go to the home page
#It is not a button, it's the search bar
    And I click on "ig-header-search-box-input" IdButton
    When I write on the search bar "byrbawrbvhbsdkjvvh"
    And I click on "ig-header-search-box-submit" IdButton
    Then I should see a "Lo sentimos, no se han encontrado resultados :(" text
    And I should see a "Buscar top ventas" button

  Scenario: No Text in the Search Bar show all games
    Given I go to the home page
    When I click on "ig-header-search-box-submit" IdButton
    #The ... indicates lots of pages of results
    Then I should see a "..." text

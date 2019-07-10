Feature: Visitor can add to order
    As a visitor,
    In order to select products I want to buy
    I would like to be able to add products to an order

    Background:
        Given the following menu item exist
            | name         | description                                                                             | price   | animal |
            | Pupperoni    | Dried free-range, grass-fed beef sausage seasoned with sage, fennel and coriander       | 100     | dog    |
        And I visit the site

    Scenario: Visitor adds an appetizer to their cart
        Then I should see "Pupperoni"
        When I click on the "Add to Order" button
        Then I should be on the "Order List" page
        And I should see "Order Items"
        And I should see "Pupperoni"
        And I should see "Order Total"
        Then I should see '100'
        And I should see "Checkout"

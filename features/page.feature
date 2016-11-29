Feature: Add a todo item
  As a user
  I want to be able to add todo item

  Scenario: Add todo item where there are 0 items
    When I navigate to the home page
    Then I can see header and input field
    When I input text "Buy Milk"
    Then I can see the item "Buy Milk" added in my todo list

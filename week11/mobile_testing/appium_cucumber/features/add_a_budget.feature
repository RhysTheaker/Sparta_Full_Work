Feature: I am able to add a budget

  As a user
  I want to add a budget
  So that I can track my spending

  Scenario: I am able to view my budget
    Given: I can open the app
    When: I navigate to the budgets
    Then: The budget page opens

  Scenario: I am able to create a budget
    Given: I can open the app
    When: I navigate to the budgets
    And: I create a budget with a name and a value
    Then: The budget is saved

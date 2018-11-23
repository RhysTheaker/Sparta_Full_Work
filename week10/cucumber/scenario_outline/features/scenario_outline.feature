Feature: Scenario outline with data tables

  Scenario Outline: using an example table can make your tests drier and more dynamic

    Given I have more than one data row in my tables
    And includes <Name> and <Age>
    Then I can print the <Name> and <Age>

  Examples:

  | Name | Age |
  | Rob | 28 |
  | BK | 21 |
  | Robin | 23 |

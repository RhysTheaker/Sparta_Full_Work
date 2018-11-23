Feature: data tabkes example

  Scenario: I am able to loop through a date table

    Given I have a datatable

    | Name|Role |
    | Dan|Wolf |
    | Rhys|Hunter |
    | Tom|Dead |
    | Rob|Mod |

    Then I am able to print out name and role to the command line

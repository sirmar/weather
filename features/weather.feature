Feature: Current temperature

  Scenario Outline: Temprature found for city
    Given input is "in <city>"
    When running weather
    Then an output line matches "In <city>:"
    And an output line matches "  Temperature: [-.0-9]+ C"

    Examples:
    | city      |
    | Vasteras  |
    | Stockholm |
    | Linkoping |

  Scenario: City not found
    Given input is "in NoMatch"
    When running weather
    Then an output line matches "City not found"

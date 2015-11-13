Feature: Input error handling

  Scenario Outline: Print help on input errors
    Given input is "<input>"
    When running weather
    And output should contain "Usage: [details] [time] in <city>"

    Examples:
    | input                            | comment                 |
    | Vasteras                         | Missing 'in'            |
    |                                  | No arguments            |
    | in                               | Missing city            |
    | details for tomorrow in Stockhom | Extra word 'for'        |
    | yesterday in Malmo               | Not a valid 'time' word |

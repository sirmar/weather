Feature: Get current weather data

  Scenario: Default to current weather and short description
    Given input is "in Vasteras"
    When running weather
    And an output line matches "Currently .+ in Vasteras."

  Scenario: 'Now' should give me the current weather
    Given input is "now in Vasteras"
    When running weather
    Then an output line matches "Currently .+ in Vasteras."

  Scenario: City not found
    Given input is "in NoMatch"
    When running weather
    Then an output line matches "City not found."

  Scenario: City should be case insensitve
    Given input is "in stockholm"
    When running weather
    Then an output line matches "Currently .+ in Stockholm."

  Scenario: Details should show temprature and wind
    Given input is "details in Vasteras"
    When running weather
    And an output line matches "  Temperature: [-.0-9]+ C"
    And an output line matches "  Wind: [.0-9]+ m/s"

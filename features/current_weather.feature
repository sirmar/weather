Feature: Get current weather data
  Background:
    Given time is Nov 13 at around 7.30 am

  Scenario: Default to current weather and short description
    Given input is "in Vasteras"
    When running weather
    And output should contain "Currently scattered clouds in Vasteras."

  Scenario: 'Now' should give me the current weather
    Given input is "now in Vasteras"
    When running weather
    Then output should contain "Currently scattered clouds in Vasteras."

  Scenario: City not found
    Given input is "in NoMatch"
    When running weather
    Then output should contain "City not found."

  Scenario: City should be case insensitve
    Given input is "in vasteras"
    When running weather
    Then output should contain "Currently scattered clouds in Vasteras."

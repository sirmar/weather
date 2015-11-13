Feature: Get weather forecasts
  Background:
    Given time is Nov 13 at around 7.30 am

  Scenario: 'later' means in three hours
    Given input is "later in Vasteras"
    When running weather
    And an output line matches "Forecasting broken clouds in Vasteras at 10 am November 13."

  Scenario: 'tomorrow' means 12 pm tomorrow
    Given input is "tomorrow in Vasteras"
    When running weather
    And an output line matches "Forecasting scattered clouds in Vasteras at 12 pm November 14."

  Scenario: Show details for forecasts
    Given input is "details tomorrow in Vasteras"
    When running weather
    And an output line matches "  Temperature: 3.78 C"
    And an output line matches "  Wind: 2.01 m/s"

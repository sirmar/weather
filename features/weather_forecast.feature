Feature: Get weather forecasts
  Background:
    Given time is Nov 13 at around 7.30 am

  Scenario: 'later' means in three hours
    Given input is "later in Vasteras"
    When running weather
    Then output should contain "Forecasting broken clouds in Vasteras at 10 am November 13."

  Scenario: 'tomorrow' means 13 pm tomorrow
    Given input is "tomorrow in Vasteras"
    When running weather
    Then output should contain "Forecasting sky is clear in Vasteras at 1 pm November 14."

  Scenario: 'tommorow at 5 pm' give you the nearest previous 3h time interval tomorrow
    Given input is "details tomorrow at 17 in Vasteras"
    When running weather
    Then output should contain "Forecasting scattered clouds in Vasteras at 4 pm November 14."

  Scenario: 'today at 5 pm' give you the nearest previous 3h time interval today
    Given input is "details today at 17 in Vasteras"
    When running weather
    Then output should contain "Forecasting light rain in Vasteras at 4 pm November 13."

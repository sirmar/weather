Feature: Show weather details
  Background:
    Given time is Nov 13 at around 7.30 am

  Scenario: Details should always show temprature
    Given input is "details in Vasteras"
    When running weather
    Then output should contain "Temperature: 4.9 C"

  Scenario: Details should always show wind
    Given input is "details in Vasteras"
    When running weather
    And output should contain "Wind: 3.6 m/s"

  Scenario: Details should show rain if available
    Given input is "details today at 17 in Vasteras"
    When running weather
    And output should contain "Rain: 1.0 mm"

  Scenario: Details should show snow if available
    Given input is "details today at 22 in Vasteras"
    When running weather
    And output should contain "Snow: 2.2 mm"

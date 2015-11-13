Feature: Show weather details
  Background:
    Given time is Nov 13 at around 7.30 am

  Scenario: Details should always show temprature
    Given input is "details in Vasteras"
    When running weather
    Then output should contain "  Temperature: 4.93 C"

  Scenario: Details should always show wind
    Given input is "details in Vasteras"
    When running weather
    And output should contain "  Wind: 3.61 m/s"

  # Scenario: Details should show rain if available
  #   Given input is "details tomorrow at in Vasteras"
  #   When running weather
  #   And output should contain "  Rain amount: 1.29 mm"

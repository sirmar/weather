Feature: Get weather forecasts

  Scenario: 'later' means in three hours
    Given input is "later in Vasteras"
    When running weather
    And an output line matches "Forecasting .+ in Vasteras at .+."

  Scenario: 'tomorrow' means at 12 pm tomorrow
    Given input is "tomorrow in Vasteras"
    When running weather
    And an output line matches "Forecasting .+ in Vasteras at 12 pm .+."

  Scenario: Show details for forecasts
    Given input is "details tomorrow in Vasteras"
    When running weather
    And an output line matches "  Temperature: [-.0-9]+ C"
    And an output line matches "  Wind: [.0-9]+ m/s"

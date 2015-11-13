require_relative 'query'

class MockWeatherQuery < WeatherQuery
  def initialize(factory)
    @factory = factory
  end

  def run(city)
    @factory.weather_query_result(
      {
        "coord" => {
          "lon" => 16.55,
          "lat" => 59.62
        },
        "weather" => [
          {
            "id" => 802,
            "main" => "Clouds",
            "description" => "scattered clouds",
            "icon" => "03n"
          }
        ],
        "base" => "cmc stations",
        "main" => {
          "temp" => 4.93,
          "pressure" => 1021.85,
          "humidity" => 100,
          "temp_min" => 4.93,
          "temp_max" => 4.93,
          "sea_level" => 1025.69,
          "grnd_level" => 1021.85
        },
        "wind" => {
          "speed" => 3.61,
          "deg" => 189.5
        },
        "clouds" => {
          "all" => 32
        },
        "dt" => 1447395852,
        "sys" => {
          "message" => 0.0023,
          "country" => "SE",
          "sunrise" => 1447397045,
          "sunset" => 1447425073
        },
        "id" => 2664454,
        "name" => "Vasteras",
        "cod" => 200
      })
  end
end

class MockForecastQuery < ForecastQuery
  def run(city, timestamp)
    result = {
      "city" => {
        "id" => 2664454,
        "name" => "Vasteras",
        "coord" => {
          "lon" => 16.552759,
          "lat" => 59.616169
        },
        "country" => "SE",
        "population" => 0,
        "sys" => {
          "population" => 0
        }
      },
      "cod" => "200",
      "message" => 0.0107,
      "cnt" => 38,
      "list" => [
        {
          "dt" => 1447405200,
          "main" => {
            "temp" => 5.98,
            "temp_min" => 5.98,
            "temp_max" => 5.98,
            "pressure" => 1018.96,
            "sea_level" => 1022.56,
            "grnd_level" => 1018.96,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 803,
              "main" => "Clouds",
              "description" => "broken clouds",
              "icon" => "04d"
            }
          ],
          "clouds" => {
            "all" => 76
          },
          "wind" => {
            "speed" => 4.48,
            "deg" => 173.506
          },
          "rain" => {},
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-13 09 =>00 =>00"
        },
        {
          "dt" => 1447416000,
          "main" => {
            "temp" => 7.85,
            "temp_min" => 7.85,
            "temp_max" => 7.85,
            "pressure" => 1014.69,
            "sea_level" => 1018.31,
            "grnd_level" => 1014.69,
            "humidity" => 99,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10d"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 6.12,
            "deg" => 180.001
          },
          "rain" => {
            "3h" => 1.29
          },
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-13 12 =>00 =>00"
        },
        {
          "dt" => 1447426800,
          "main" => {
            "temp" => 9.04,
            "temp_min" => 9.04,
            "temp_max" => 9.04,
            "pressure" => 1012.87,
            "sea_level" => 1016.65,
            "grnd_level" => 1012.87,
            "humidity" => 95,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 36
          },
          "wind" => {
            "speed" => 4.47,
            "deg" => 232.004
          },
          "rain" => {
            "3h" => 1.015
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-13 15 =>00 =>00"
        },
        {
          "dt" => 1447437600,
          "main" => {
            "temp" => 7.59,
            "temp_min" => 7.59,
            "temp_max" => 7.59,
            "pressure" => 1012.77,
            "sea_level" => 1016.44,
            "grnd_level" => 1012.77,
            "humidity" => 96,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 24
          },
          "wind" => {
            "speed" => 5,
            "deg" => 236.002
          },
          "rain" => {
            "3h" => 0.24
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-13 18 =>00 =>00"
        },
        {
          "dt" => 1447448400,
          "main" => {
            "temp" => 6.21,
            "temp_min" => 6.21,
            "temp_max" => 6.21,
            "pressure" => 1011.57,
            "sea_level" => 1015.24,
            "grnd_level" => 1011.57,
            "humidity" => 97,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 802,
              "main" => "Clouds",
              "description" => "scattered clouds",
              "icon" => "03n"
            }
          ],
          "clouds" => {
            "all" => 36
          },
          "wind" => {
            "speed" => 4.09,
            "deg" => 228.001
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-13 21 =>00 =>00"
        },
        {
          "dt" => 1447459200,
          "main" => {
            "temp" => 5.42,
            "temp_min" => 5.42,
            "temp_max" => 5.42,
            "pressure" => 1009.98,
            "sea_level" => 1013.55,
            "grnd_level" => 1009.98,
            "humidity" => 99,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 800,
              "main" => "Clear",
              "description" => "sky is clear",
              "icon" => "02n"
            }
          ],
          "clouds" => {
            "all" => 8
          },
          "wind" => {
            "speed" => 3.54,
            "deg" => 208.003
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-14 00 =>00 =>00"
        },
        {
          "dt" => 1447470000,
          "main" => {
            "temp" => 3.16,
            "temp_min" => 3.16,
            "temp_max" => 3.16,
            "pressure" => 1007.05,
            "sea_level" => 1010.85,
            "grnd_level" => 1007.05,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 801,
              "main" => "Clouds",
              "description" => "few clouds",
              "icon" => "02n"
            }
          ],
          "clouds" => {
            "all" => 12
          },
          "wind" => {
            "speed" => 1.5,
            "deg" => 231.501
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-14 03 =>00 =>00"
        },
        {
          "dt" => 1447480800,
          "main" => {
            "temp" => 1.97,
            "temp_min" => 1.97,
            "temp_max" => 1.97,
            "pressure" => 1006.1,
            "sea_level" => 1009.79,
            "grnd_level" => 1006.1,
            "humidity" => 98,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 801,
              "main" => "Clouds",
              "description" => "few clouds",
              "icon" => "02n"
            }
          ],
          "clouds" => {
            "all" => 20
          },
          "wind" => {
            "speed" => 1.45,
            "deg" => 188.002
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-14 06 =>00 =>00"
        },
        {
          "dt" => 1447491600,
          "main" => {
            "temp" => 3.78,
            "temp_min" => 3.78,
            "temp_max" => 3.78,
            "pressure" => 1005.83,
            "sea_level" => 1009.6,
            "grnd_level" => 1005.83,
            "humidity" => 98,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 802,
              "main" => "Clouds",
              "description" => "scattered clouds",
              "icon" => "03d"
            }
          ],
          "clouds" => {
            "all" => 32
          },
          "wind" => {
            "speed" => 2.01,
            "deg" => 233.003
          },
          "rain" => {},
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-14 09 =>00 =>00"
        },
        {
          "dt" => 1447502400,
          "main" => {
            "temp" => 6.55,
            "temp_min" => 6.55,
            "temp_max" => 6.55,
            "pressure" => 1005.17,
            "sea_level" => 1008.8,
            "grnd_level" => 1005.17,
            "humidity" => 96,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 800,
              "main" => "Clear",
              "description" => "sky is clear",
              "icon" => "02d"
            }
          ],
          "clouds" => {
            "all" => 8
          },
          "wind" => {
            "speed" => 1.76,
            "deg" => 251.5
          },
          "rain" => {},
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-14 12 =>00 =>00"
        },
        {
          "dt" => 1447513200,
          "main" => {
            "temp" => 5.15,
            "temp_min" => 5.15,
            "temp_max" => 5.15,
            "pressure" => 1005.26,
            "sea_level" => 1008.94,
            "grnd_level" => 1005.26,
            "humidity" => 98,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 802,
              "main" => "Clouds",
              "description" => "scattered clouds",
              "icon" => "03n"
            }
          ],
          "clouds" => {
            "all" => 44
          },
          "wind" => {
            "speed" => 2.66,
            "deg" => 236.002
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-14 15 =>00 =>00"
        },
        {
          "dt" => 1447524000,
          "main" => {
            "temp" => 4.21,
            "temp_min" => 4.21,
            "temp_max" => 4.21,
            "pressure" => 1005.23,
            "sea_level" => 1008.9,
            "grnd_level" => 1005.23,
            "humidity" => 97,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 801,
              "main" => "Clouds",
              "description" => "few clouds",
              "icon" => "02n"
            }
          ],
          "clouds" => {
            "all" => 12
          },
          "wind" => {
            "speed" => 3.01,
            "deg" => 246.507
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-14 18 =>00 =>00"
        },
        {
          "dt" => 1447534800,
          "main" => {
            "temp" => 4.3,
            "temp_min" => 4.3,
            "temp_max" => 4.3,
            "pressure" => 1005.33,
            "sea_level" => 1009.12,
            "grnd_level" => 1005.33,
            "humidity" => 97,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 800,
              "main" => "Clear",
              "description" => "sky is clear",
              "icon" => "01n"
            }
          ],
          "clouds" => {
            "all" => 0
          },
          "wind" => {
            "speed" => 3.77,
            "deg" => 262.002
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-14 21 =>00 =>00"
        },
        {
          "dt" => 1447545600,
          "main" => {
            "temp" => 4.11,
            "temp_min" => 4.11,
            "temp_max" => 4.11,
            "pressure" => 1006.07,
            "sea_level" => 1009.75,
            "grnd_level" => 1006.07,
            "humidity" => 94,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 800,
              "main" => "Clear",
              "description" => "sky is clear",
              "icon" => "01n"
            }
          ],
          "clouds" => {
            "all" => 0
          },
          "wind" => {
            "speed" => 3.76,
            "deg" => 267
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-15 00 =>00 =>00"
        },
        {
          "dt" => 1447556400,
          "main" => {
            "temp" => 3.63,
            "temp_min" => 3.63,
            "temp_max" => 3.63,
            "pressure" => 1006.58,
            "sea_level" => 1010.26,
            "grnd_level" => 1006.58,
            "humidity" => 97,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 800,
              "main" => "Clear",
              "description" => "sky is clear",
              "icon" => "02n"
            }
          ],
          "clouds" => {
            "all" => 8
          },
          "wind" => {
            "speed" => 3.68,
            "deg" => 271.504
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-15 03 =>00 =>00"
        },
        {
          "dt" => 1447567200,
          "main" => {
            "temp" => 2.64,
            "temp_min" => 2.64,
            "temp_max" => 2.64,
            "pressure" => 1007.02,
            "sea_level" => 1010.68,
            "grnd_level" => 1007.02,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 800,
              "main" => "Clear",
              "description" => "sky is clear",
              "icon" => "01n"
            }
          ],
          "clouds" => {
            "all" => 0
          },
          "wind" => {
            "speed" => 2.78,
            "deg" => 273.501
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-15 06 =>00 =>00"
        },
        {
          "dt" => 1447578000,
          "main" => {
            "temp" => 3.08,
            "temp_min" => 3.08,
            "temp_max" => 3.08,
            "pressure" => 1008.24,
            "sea_level" => 1011.86,
            "grnd_level" => 1008.24,
            "humidity" => 99,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 800,
              "main" => "Clear",
              "description" => "sky is clear",
              "icon" => "01d"
            }
          ],
          "clouds" => {
            "all" => 0
          },
          "wind" => {
            "speed" => 1.58,
            "deg" => 273.506
          },
          "rain" => {},
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-15 09 =>00 =>00"
        },
        {
          "dt" => 1447588800,
          "main" => {
            "temp" => 5.07,
            "temp_min" => 5.07,
            "temp_max" => 5.07,
            "pressure" => 1009.54,
            "sea_level" => 1013.2,
            "grnd_level" => 1009.54,
            "humidity" => 94,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 800,
              "main" => "Clear",
              "description" => "sky is clear",
              "icon" => "01d"
            }
          ],
          "clouds" => {
            "all" => 0
          },
          "wind" => {
            "speed" => 1.79,
            "deg" => 0.00115967
          },
          "rain" => {},
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-15 12 =>00 =>00"
        },
        {
          "dt" => 1447599600,
          "main" => {
            "temp" => 2.51,
            "temp_min" => 2.51,
            "temp_max" => 2.51,
            "pressure" => 1011.84,
            "sea_level" => 1015.44,
            "grnd_level" => 1011.84,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 801,
              "main" => "Clouds",
              "description" => "few clouds",
              "icon" => "02n"
            }
          ],
          "clouds" => {
            "all" => 20
          },
          "wind" => {
            "speed" => 2.49,
            "deg" => 1.50723
          },
          "rain" => {},
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-15 15 =>00 =>00"
        },
        {
          "dt" => 1447610400,
          "main" => {
            "temp" => 3.59,
            "temp_min" => 3.59,
            "temp_max" => 3.59,
            "pressure" => 1013.82,
            "sea_level" => 1017.59,
            "grnd_level" => 1013.82,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 88
          },
          "wind" => {
            "speed" => 2.59,
            "deg" => 4.50037
          },
          "rain" => {
            "3h" => 0.06
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-15 18 =>00 =>00"
        },
        {
          "dt" => 1447621200,
          "main" => {
            "temp" => 4.59,
            "temp_min" => 4.59,
            "temp_max" => 4.59,
            "pressure" => 1015.52,
            "sea_level" => 1019.34,
            "grnd_level" => 1015.52,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 88
          },
          "wind" => {
            "speed" => 2.16,
            "deg" => 18.5005
          },
          "rain" => {
            "3h" => 0.105
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-15 21 =>00 =>00"
        },
        {
          "dt" => 1447632000,
          "main" => {
            "temp" => 4.51,
            "temp_min" => 4.51,
            "temp_max" => 4.51,
            "pressure" => 1017.21,
            "sea_level" => 1020.85,
            "grnd_level" => 1017.21,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 88
          },
          "wind" => {
            "speed" => 1.78,
            "deg" => 40.0002
          },
          "rain" => {
            "3h" => 0.115
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-16 00 =>00 =>00"
        },
        {
          "dt" => 1447642800,
          "main" => {
            "temp" => 4.57,
            "temp_min" => 4.57,
            "temp_max" => 4.57,
            "pressure" => 1017.09,
            "sea_level" => 1021.04,
            "grnd_level" => 1017.09,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 2.12,
            "deg" => 71.0041
          },
          "rain" => {
            "3h" => 0.095
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-16 03 =>00 =>00"
        },
        {
          "dt" => 1447653600,
          "main" => {
            "temp" => 4.77,
            "temp_min" => 4.77,
            "temp_max" => 4.77,
            "pressure" => 1016.77,
            "sea_level" => 1020.6,
            "grnd_level" => 1016.77,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 2.61,
            "deg" => 119.002
          },
          "rain" => {
            "3h" => 0.04
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-16 06 =>00 =>00"
        },
        {
          "dt" => 1447664400,
          "main" => {
            "temp" => 5.59,
            "temp_min" => 5.59,
            "temp_max" => 5.59,
            "pressure" => 1016.15,
            "sea_level" => 1019.93,
            "grnd_level" => 1016.15,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10d"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 2.81,
            "deg" => 138.001
          },
          "rain" => {
            "3h" => 0.05
          },
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-16 09 =>00 =>00"
        },
        {
          "dt" => 1447675200,
          "main" => {
            "temp" => 6.83,
            "temp_min" => 6.83,
            "temp_max" => 6.83,
            "pressure" => 1014.01,
            "sea_level" => 1017.74,
            "grnd_level" => 1014.01,
            "humidity" => 96,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10d"
            }
          ],
          "clouds" => {
            "all" => 88
          },
          "wind" => {
            "speed" => 3.47,
            "deg" => 145.503
          },
          "rain" => {
            "3h" => 0.04
          },
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-16 12 =>00 =>00"
        },
        {
          "dt" => 1447686000,
          "main" => {
            "temp" => 6.65,
            "temp_min" => 6.65,
            "temp_max" => 6.65,
            "pressure" => 1012.13,
            "sea_level" => 1015.8,
            "grnd_level" => 1012.13,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 3.52,
            "deg" => 146
          },
          "rain" => {
            "3h" => 1.48
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-16 15 =>00 =>00"
        },
        {
          "dt" => 1447696800,
          "main" => {
            "temp" => 6.62,
            "temp_min" => 6.62,
            "temp_max" => 6.62,
            "pressure" => 1010.22,
            "sea_level" => 1014.06,
            "grnd_level" => 1010.22,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 501,
              "main" => "Rain",
              "description" => "moderate rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 4.55,
            "deg" => 146.004
          },
          "rain" => {
            "3h" => 3.85
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-16 18 =>00 =>00"
        },
        {
          "dt" => 1447707600,
          "main" => {
            "temp" => 6.72,
            "temp_min" => 6.72,
            "temp_max" => 6.72,
            "pressure" => 1009.53,
            "sea_level" => 1013.23,
            "grnd_level" => 1009.53,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 4.66,
            "deg" => 146.502
          },
          "rain" => {
            "3h" => 2.27
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-16 21 =>00 =>00"
        },
        {
          "dt" => 1447718400,
          "main" => {
            "temp" => 7.21,
            "temp_min" => 7.21,
            "temp_max" => 7.21,
            "pressure" => 1009.18,
            "sea_level" => 1012.83,
            "grnd_level" => 1009.18,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 3.52,
            "deg" => 153.005
          },
          "rain" => {
            "3h" => 1.08
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-17 00 =>00 =>00"
        },
        {
          "dt" => 1447729200,
          "main" => {
            "temp" => 7.66,
            "temp_min" => 7.66,
            "temp_max" => 7.66,
            "pressure" => 1009.4,
            "sea_level" => 1012.97,
            "grnd_level" => 1009.4,
            "humidity" => 98,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 2.41,
            "deg" => 220.5
          },
          "rain" => {
            "3h" => 0.29
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-17 03 =>00 =>00"
        },
        {
          "dt" => 1447740000,
          "main" => {
            "temp" => 6.36,
            "temp_min" => 6.36,
            "temp_max" => 6.36,
            "pressure" => 1009.42,
            "sea_level" => 1013.09,
            "grnd_level" => 1009.42,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 56
          },
          "wind" => {
            "speed" => 2.41,
            "deg" => 248.003
          },
          "rain" => {
            "3h" => 0.04
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-17 06 =>00 =>00"
        },
        {
          "dt" => 1447750800,
          "main" => {
            "temp" => 5.66,
            "temp_min" => 5.66,
            "temp_max" => 5.66,
            "pressure" => 1008.85,
            "sea_level" => 1012.67,
            "grnd_level" => 1008.85,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10d"
            }
          ],
          "clouds" => {
            "all" => 12
          },
          "wind" => {
            "speed" => 1.36,
            "deg" => 197.503
          },
          "rain" => {
            "3h" => 0.02
          },
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-17 09 =>00 =>00"
        },
        {
          "dt" => 1447761600,
          "main" => {
            "temp" => 6.78,
            "temp_min" => 6.78,
            "temp_max" => 6.78,
            "pressure" => 1007.06,
            "sea_level" => 1010.77,
            "grnd_level" => 1007.06,
            "humidity" => 99,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10d"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 2.06,
            "deg" => 146.004
          },
          "rain" => {
            "3h" => 0.01
          },
          "sys" => {
            "pod" => "d"
          },
          "dt_txt" => "2015-11-17 12 =>00 =>00"
        },
        {
          "dt" => 1447772400,
          "main" => {
            "temp" => 7.08,
            "temp_min" => 7.08,
            "temp_max" => 7.08,
            "pressure" => 1003.97,
            "sea_level" => 1007.74,
            "grnd_level" => 1003.97,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 3.75,
            "deg" => 116.501
          },
          "rain" => {
            "3h" => 1.9
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-17 15 =>00 =>00"
        },
        {
          "dt" => 1447783200,
          "main" => {
            "temp" => 7.47,
            "temp_min" => 7.47,
            "temp_max" => 7.47,
            "pressure" => 1000.89,
            "sea_level" => 1004.61,
            "grnd_level" => 1000.89,
            "humidity" => 100,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 501,
              "main" => "Rain",
              "description" => "moderate rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 5.61,
            "deg" => 120.002
          },
          "rain" => {
            "3h" => 3.87
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-17 18 =>00 =>00"
        },
        {
          "dt" => 1447794000,
          "main" => {
            "temp" => 8.58,
            "temp_min" => 8.58,
            "temp_max" => 8.58,
            "pressure" => 998.59,
            "sea_level" => 1002.35,
            "grnd_level" => 998.59,
            "humidity" => 97,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 4.21,
            "deg" => 130
          },
          "rain" => {
            "3h" => 1.45
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-17 21 =>00 =>00"
        },
        {
          "dt" => 1447804800,
          "main" => {
            "temp" => 8.93,
            "temp_min" => 8.93,
            "temp_max" => 8.93,
            "pressure" => 997.66,
            "sea_level" => 1001.28,
            "grnd_level" => 997.66,
            "humidity" => 97,
            "temp_kf" => 0
          },
          "weather" => [
            {
              "id" => 500,
              "main" => "Rain",
              "description" => "light rain",
              "icon" => "10n"
            }
          ],
          "clouds" => {
            "all" => 92
          },
          "wind" => {
            "speed" => 2.57,
            "deg" => 144.001
          },
          "rain" => {
            "3h" => 0.49
          },
          "sys" => {
            "pod" => "n"
          },
          "dt_txt" => "2015-11-18 00 =>00 =>00"
        }
      ]
    }
    @factory.forecast_query_result(result, timestamp)
  end
end

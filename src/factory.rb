require_relative 'arg_parser'
require_relative 'mock_query'
require_relative 'query'

class Factory
  def create
    ArgParser.new(self, ARGV)
  end

  def forecast_query
    if ENV.has_key?('MOCK_WEATHER_DATA')
      MockForecastQuery.new(self)
    else
      ForecastQuery.new(self)
    end
  end

  def weather_query
    if ENV.has_key?('MOCK_WEATHER_DATA')
      MockWeatherQuery.new(self)
    else
      WeatherQuery.new(self)
    end
  end

  def forecast_query_result(result, timestamp)
    ForecastQueryResult.new(result, timestamp)
  end

  def weather_query_result(result)
      WeatherQueryResult.new(result)
  end

end

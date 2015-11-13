require_relative 'arg_parser'
require_relative 'mock_query'
require_relative 'query'
require_relative 'time'

class Factory
  def initialize
    @time = time
  end

  def create
    ArgParser.new(self, @time, ARGV)
  end

  def time
    if ENV.has_key?('MOCK_WEATHER_DATA')
      MockTime.new ENV['MOCK_WEATHER_DATA'].to_i
    else
      TimeWrapper.new
    end
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
    ForecastQueryResult.new(time, result, timestamp)
  end

  def weather_query_result(result)
      WeatherQueryResult.new(time, result)
  end

end

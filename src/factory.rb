require_relative 'arg_parser'
require_relative 'query'

class Factory
  def create
    ArgParser.new(self, ARGV)
  end

  def forecast_query
    ForecastQuery.new(self)
  end

  def weather_query
      WeatherQuery.new(self)
  end

  def forecast_query_result(result, timestamp)
    ForecastQueryResult.new(result, timestamp)
  end

  def weather_query_result(result)
      WeatherQueryResult.new(result)
  end

end

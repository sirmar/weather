require 'HTTParty'
require_relative 'query_result'

class Query
  def initialize(factory)
    @factory = factory
    @base_uri = "http://api.openweathermap.org/data/2.5"
    @params = {
      units: 'metric',
      type: 'accurate',
      mode: 'json',
      APPID: 'd5eb4028dad9cbd0989e276bdef5b93d'
    }
  end

  def uri
    raise NotImplementedError
  end

  def run(city)
    HTTParty.get(uri, :query => @params.merge({q: city}))
  end
end

class WeatherQuery < Query
  def uri
    @base_uri + "/weather"
  end

  def run(city)
    @factory.weather_query_result(super(city))
  end
end

class ForecastQuery < Query
  def uri
    @base_uri + "/forecast"
  end

  def run(city, timestamp)
    @factory.forecast_query_result(super(city), timestamp)
  end
end

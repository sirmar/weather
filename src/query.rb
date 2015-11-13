require 'HTTParty'
require_relative 'query_result'

class Query
  def initialize(factory, time)
    @time = time
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

  def run(data)
    HTTParty.get(uri, :query => @params.merge({q: data[:city]}))
  end
end

class WeatherQuery < Query
  def uri
    @base_uri + "/weather"
  end

  def run(data)
    @factory.weather_query_result(super)
  end
end

class ForecastQuery < Query
  def uri
    @base_uri + "/forecast"
  end

  def run(data)
    @factory.forecast_query_result(super, timestamp(data))
  end

  def timestamp(data)
    hour = @time.default_hour(data[:time_word], data[:hour])
    @time.send(data[:time_word]) + hour
  end
end

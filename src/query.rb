require 'HTTParty'
require_relative 'query_result'

class Query
  def initialize(params)
    @uri = "http://api.openweathermap.org/data/2.5/weather"
    @params = {
      units: 'metric',
      type: 'accurate',
      mode: 'json',
      APPID: 'd5eb4028dad9cbd0989e276bdef5b93d'
    }.merge(params)
  end

  def run
    result = HTTParty.get(@uri, :query => @params)
    QueryResult.new(result)
  end

end

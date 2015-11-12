# coding: utf-8

require_relative 'query'
require_relative 'weather_not_found_error'

class ArgParser
  def initialize(args)
    @args = args
  end

  def run
    city = @args[1]
    result = Query.new(
      {
        q: city
      }).run
    if city == result.city
      result
    else
      raise WeatherNotFoundError
    end
  end
end

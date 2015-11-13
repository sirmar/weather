require_relative 'weather_error'

class QueryResult
  def initialize(time, result)
    @time = time
    @result = result
  end

  def temperature
    @result["main"]["temp"]
  end

  def wind
    @result["wind"]["speed"]
  end

  def description
    @result["weather"].first["description"]
  end

  def city
    @result["name"]
  end

  def details
    """#{short}
  Temperature: #{temperature} C
  Wind: #{wind} m/s"""
  end
end

class WeatherQueryResult < QueryResult
  def short
    "Currently #{description} in #{city}."
  end
end

class ForecastQueryResult < QueryResult
  def initialize(time, result, timestamp)
    @timestamp = timestamp
    chosen_result = result["list"].find {
      |forecast| @timestamp.between?(forecast["dt"], forecast["dt"] + 3*60*60)
    }
    chosen_result["name"] = result["city"]["name"]
    super(time, chosen_result)
  end

  def short
    "Forecasting #{description} in #{city} at #{@time.human(@timestamp)}."
  end
end

require_relative 'weather_error'
require_relative 'time'

class QueryResult
  def initialize(time, result)
    @time = time
    @result = result
  end

  def details
    [short, temperature, wind, rainfall("rain"), rainfall("snow")].join()
  end

  def temperature
    "  Temperature: #{@result["main"]["temp"].round(1)} C\n"
  end

  def wind
    "  Wind: #{@result["wind"]["speed"].round(1)} m/s\n"
  end

  def rainfall(type)
    if not @result[type] or not @result[type]["3h"]
      ""
    else
      "  #{type.capitalize}: #{@result[type]["3h"].round(1)} mm\n"
    end
  end

  def description
    @result["weather"].first["description"]
  end

  def city
    @result["name"]
  end

  def time
    @time.human(@result["dt"])
  end
end

class WeatherQueryResult < QueryResult
  def short
    "Currently #{description} in #{city}.\n"
  end
end

class ForecastQueryResult < QueryResult
  ResultIntervall = 3*TimeWrapper::Hours

  def initialize(time, result, timestamp)
    chosen_result = result["list"].find { |forecast|
      timestamp < forecast["dt"] + ResultIntervall
    }
    chosen_result["name"] = result["city"]["name"]
    super(time, chosen_result)
  end

  def short
    "Forecasting #{description} in #{city} at #{time}.\n"
  end
end

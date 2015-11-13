class Engine
  attr_writer :data

  def initialize(factory)
    @factory = factory
    @data = nil
    @result = nil
  end

  def run
    @result = build_query.run(@data)
    show
  end

  def city_found?
    @data[:city].downcase == @result.city.downcase
  end

  def build_query
    if %w[later today tomorrow].include?(@data[:time_word])
      @factory.forecast_query
    else
      @factory.weather_query
    end
  end

  def show
    if city_found?
      puts @result.send @data[:details]
    else
      puts "City not found."
    end
  end
end

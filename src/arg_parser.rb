# coding: utf-8

class ArgParser
  def initialize(factory, time, args)
    @factory = factory
    @time = time
    @args = args.join(" ")
    @ok_input = /^(details )?(now |later |today |tomorrow )?in (.+)$/
  end

  def run
    regexp_result = @args.match(@ok_input)
    if regexp_result != nil
      details, time, city = regexp_result.captures
      time_word = (time || "").strip
      result = nil
      if %w[later today tomorrow].include?(time_word)
        result = @factory.forecast_query.run(city, @time.send(time_word))
      else
        result = @factory.weather_query.run(city)
      end

      if city.downcase == result.city.downcase
        if details
          puts result.details
        else
          puts result.short
        end
      else
        puts "City not found."
      end
    else
      puts "Usage: [details] [time] in <city>"
    end
  end
end

# coding: utf-8

class ArgParser
  Hours = 60*60

  def initialize(factory, args)
    @factory = factory
    @args = args.join(" ")
    @ok_input = /^(details )?(now |later |today |tomorrow )?in (.+)$/
    @timestamps = {
      "later" => Time.now.to_i + 3*Hours,
      "tomorrow" => Date.today.next.to_time.to_i + 12*Hours,
      "today" => Date.today.to_time.to_i + 12*Hours
    }
  end

  def run
    regexp_result = @args.match(@ok_input)
    if regexp_result != nil
      details, time, city = regexp_result.captures
      time = (time || "").strip
      result = nil
      if %w[later today tomorrow].include?(time)
        result = @factory.forecast_query.run(city, @timestamps[time])
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

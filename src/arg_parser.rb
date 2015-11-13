# coding: utf-8

class ArgParser
  def initialize(engine, args)
    @engine = engine
    @args = args.join(" ")
  end

  def run
    /^(?'details'details )?((?'time_word'now|later|today|tomorrow) )?(at (?'hour'\d+) )?in (?'city'.+)$/ =~ @args

    if city.nil?
      puts "Usage: [details] [time] in <city>"
    else
      @engine.data=({
        details: details,
        time_word: time_word,
        hour: hour,
        city: city
        })
      @engine.run
    end
  end
end

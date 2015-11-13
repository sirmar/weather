class TimeWrapper
  Hours = 60*60

  def current_time
    Time.now
  end

  def current_date
    Date.today
  end

  def default_hour(word, hour)
    if hour.nil?
      defaults = {
        "tomorrow" => 13*Hours,
        "today" => 13*Hours
      }
      defaults.default = 0
      defaults[word]
    else
      hour.to_i*Hours
    end
  end

  def now
    current_time.to_i
  end

  def today
    current_date.to_time.to_i
  end

  def tomorrow
    current_date.next.to_time.to_i
  end

  def later
    current_time.to_i + 3*Hours
  end

  def human(timestamp)
    Time.at(timestamp).strftime("%-l %P %B %d")
  end
end

class MockTime < TimeWrapper
  def initialize(mocked_time)
    @mocked_time = mocked_time
  end

  def current_time
    Time.at @mocked_time
  end

  def current_date
    current_time.to_date
  end
end

require 'time'

module KnowsTheTime
  def time(timestamp=1447395852)
    @time ||= timestamp
  end
end

World(KnowsTheTime)

class QueryResult
  def initialize(result)
    @result = result
  end

  def ok?
    @result.code == 200
  end

  def temperature
    if ok?
      @result["main"]["temp"]
    end
  end

  def city
    if ok?
      @result["name"]
    end
  end
end

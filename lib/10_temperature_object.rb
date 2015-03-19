class Temperature
  def initialize(candf = {})
    if candf[:c] == nil
      @temp = candf[:f]
    else
      @temp = ctof(candf[:c])
    end
  end

  def in_fahrenheit
    @temp
  end

  def in_celsius
    ftoc(@temp)
  end

  def self.from_celsius(c)
    new(:c => c)
  end

  def self.from_fahrenheit(f)
    new(:f => f)
  end

  def ftoc(f)
    5.0 * (f - 32.0) / 9.0
  end

  def ctof(c)
    9.0 * c / 5.0 + 32.0
  end
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end

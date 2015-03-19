class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds % 3600) / 60
    hours = @seconds / 3600
    padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
  end

  def padded(n)
    if n < 10
      return "0" + n.to_s
    end

    return n.to_s
  end
end

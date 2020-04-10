# frozen_string_literal: true

# Timer takes a time in its seconds attribute and prints it in the format
# hh:mm:ss
class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(val)
    if val.to_s.length < 2
      "0#{val}"
    else
      val.to_s
    end
  end

  def time_string
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    seconds = (self.seconds % 3600 % 60)
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
end

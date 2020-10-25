# frozen_string_literal: true

# Clock Class
class Clock
  attr_reader :hour
  attr_reader :minute

  def initialize(time)
    @hour = time[:hour] || 0
    @minute = time[:minute] || 0
  end

  def to_s
    time = Time.new(Time.now.year)
    time += @hour * 3600 + @minute * 60
    time.strftime '%H:%M'
  end

  def +(other)
    hour = self.hour + other.hour
    minute = self.minute + other.minute
    Clock.new(hour: hour, minute: minute)
  end

  def -(other)
    hour = self.hour - other.hour
    minute = self.minute - other.minute
    Clock.new(hour: hour, minute: minute)
  end

  def ==(other)
    to_s.eql?(other.to_s)
  end
end

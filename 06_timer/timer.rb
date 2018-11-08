class Timer 
  attr_accessor :seconds, :minutes, :hours
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    while @seconds > 60
      @seconds -= 60
      @minutes += 1
    end
    while @minutes > 60
      @minutes -= 60
      @hours += 1
    end
    return "#{sprintf '%02d', @hours}:#{sprintf'%02d',@minutes}:#{sprintf'%02d',@seconds}"
  end
end

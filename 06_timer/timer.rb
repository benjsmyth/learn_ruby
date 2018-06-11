class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def seconds
  	return @seconds
  end

  def padded(n)
  	n.to_s.length === 1 ? padded = "0#{n}" : padded = "#{n}"
  	return padded
  end

  def time_string
	seconds = @seconds % 60
	minutes = (@seconds / 60) % 60
	hours = ((@seconds / 60) / 60) % 60

	time = padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
	return time
  end
end
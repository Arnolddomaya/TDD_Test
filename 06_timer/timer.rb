class Timer
  #write your code here
  attr_reader :seconds
  attr_writer :seconds
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def time_string
    time = @seconds 
  end
end

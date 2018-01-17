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
    time, seconds,mins,hours = @seconds.to_i, 0,0,0
    #on prend la partie entière du resultat de la division
    seconds = time%60
    mins = (time/60).to_i
    hours = (mins.to_f/60).to_i
    mins = mins.modulo(60)
    "%02d:%02d:%02d" % [hours,mins,seconds]
  end
end

class Appointments
  attr_reader :slots
  def initialize
    @slots = []
  end

  def earliest
    slots.sort!
    slots.first
  end

  def at(time)
    @slots << time
  end
end

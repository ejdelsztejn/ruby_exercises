require 'date'

class Phoenix
  attr_reader :name, :home, :owner, :last_burning_day, :has_tears

  def initialize(name, home = "Hogwarts")
    @name             = name
    @home             = home
    @owner            = "Albus Dumbledore"
    @last_burning_day = Date.today.prev_month.to_s
    @has_tears        = false

    if home == "Paris"
      @owner = "Gellert Grindelwald"
    elsif home != "Paris" && home != "Hogwarts"
      @owner = nil
    end
  end

  def burst_into_flames!
    @last_burning_day = Date.today.to_s
  end

  def has_tears?
    has_tears
  end
end

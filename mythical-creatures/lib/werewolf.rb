class Werewolf
attr_reader :name, :location, :form, :hungry

  def initialize(name, location)
    @name = name
    @location = location
    @form = "human"
    @hungry = false
  end

  def human?
    true if form == "human"
  end

  def wolf?
    true if form == "wolf"
  end

  def change!
    if form == "human"
      @form = "wolf"
      @hungry = true
    else
      @form = "human"
      @hungry = false
    end
  end

  def hungry?
    hungry
  end

  def consume(victim)
    if form == "wolf"
      @hungry = false
      victim.dies
      "#{victim.name} is yummy!"
    else
      "I can't eat #{victim.name}! How preposterous!"
    end
  end

end

class Victim
  attr_accessor :name, :status

  def initialize(name)
    @name = name
    @status = :alive
  end

  def dies
    @status = :dead
  end

  def dead?
    true if status == :dead
  end
end

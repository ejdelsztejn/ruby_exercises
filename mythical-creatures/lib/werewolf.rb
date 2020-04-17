class Werewolf
  attr_reader :name, :location, :form, :hungry

  def initialize(name, location)
    @name     = name
    @location = location
    @form     = "human"
    @hungry   = false
  end

  def human?
    form == "human"
  end

  def wolf?
    form == "wolf"
  end

  def change!
    if form == "wolf"
      @form   = "human"
      @hungry = false
    else
      @form   = "wolf"
      @hungry = true
    end
  end

  def hungry?
    hungry
  end

  def consume(victim)
    return "I can't eat #{victim.name}! How preposterous!" unless form == "wolf"

    @hungry = false
    victim.dies
    "#{victim.name} is yummy!"
  end
end

class Victim
  attr_reader :name, :status

  def initialize(name)
    @name   = name
    @status = :alive
  end

  def dies
    @status = :dead
  end

  def dead?
    status == :dead
  end
end

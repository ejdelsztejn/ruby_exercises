class Werewolf
  attr_reader :name, :location, :human_form, :hungry

  def initialize(name, location)
    @name       = name
    @location   = location
    @human_form = true
    @hungry     = false
  end

  def human?
    human_form
  end

  def wolf?
    !human_form
  end

  def change!
    @human_form = !human_form
    @hungry = true
  end

  def hungry?
    hungry
  end

  def consume(victim)
    return "I can't eat #{victim.name}! How preposterous!" unless human_form == false

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

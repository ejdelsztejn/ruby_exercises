class Ogre
  attr_reader :name, :home, :encounter_counter, :swings

  def initialize(name, home = "Swamp")
    @name              = name
    @home              = home
    @encounter_counter = 0
    @swings            = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_ogre
    self.swing_at(human)
  end

  def swing_at(human)
    return false unless human.notices_ogre?
    @swings += 1
    human.swinged_at?
  end

  def apologize(human)
    human.hear_apology
  end
end

class Human
  attr_reader :name, :encounter_counter, :ogre_swings, :knocked_out

  def initialize(name = "Jane")
    @name              = name
    @encounter_counter = 0
    @ogre_swings       = 0
    @knocked_out       = false
  end

  def encounter_ogre
    @encounter_counter += 1
  end

  def notices_ogre?
    true if encounter_counter % 3 == 0
  end

  def swinged_at?
    @ogre_swings += 1
    @knocked_out = true if ogre_swings > 0 && ogre_swings.even?
  end

  def hear_apology
    @knocked_out = false
  end

  def knocked_out?
    knocked_out
  end

end

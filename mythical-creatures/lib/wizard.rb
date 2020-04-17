class Wizard
  attr_reader :name, :bearded, :spells_cast

  def initialize(name, bearded: true)
    @name        = name
    @bearded     = bearded
    @spells_cast = 0
  end

  def bearded?
    bearded
  end

  def incantation(phrase)
    "sudo " + phrase
  end

  def rested?
    spells_cast < 3
  end

  def cast
    @spells_cast += 1
    "MAGIC MISSILE"
  end
end

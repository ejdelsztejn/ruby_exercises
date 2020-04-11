class Pirate
  attr_reader :name, :job

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @heinous_acts = 0
    @booty = 0
  end

  def cursed?
    true if @heinous_acts >= 3
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def booty
    @booty
  end

  def rob_ship
    @booty += 100
  end
end

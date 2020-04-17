class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name    = name
    @statues = []
  end

  def stare(person)
    if statues.count < 3
      person.stoned!
    else
      statues[0].stoned!
      statues.shift
    end
    statues << person
  end
end

class Person
  attr_reader :name, :stoned
  def initialize(name)
    @name   = name
    @stoned = false
  end

  def stoned!
    @stoned = !stoned
  end

  def stoned?
    stoned
  end
end

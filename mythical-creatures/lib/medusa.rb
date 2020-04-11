class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    if statues.count < 3
      statues << person
      person.stoned = true
    else
      statues[0].stoned = false
      statues.shift
      statues << person
    end
  end
end

class Person
  attr_reader :name
  attr_accessor :stoned
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    stoned
  end
end

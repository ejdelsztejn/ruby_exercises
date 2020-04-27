class Rabbit
  attr_reader :hash, :name, :num_syllables

  def initialize(hash)
    @num_syllables = hash[:num_syllables]
    if @num_syllables == 2
      @name = hash[:name] + " Rabbit"
    else
      @name = hash[:name]
    end
  end
end

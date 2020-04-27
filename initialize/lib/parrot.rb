class Parrot
  attr_reader :hash, :name, :known_words, :sound

  def initialize(hash)
    @name = hash[:name]
    @known_words = hash[:known_words]
    @sound = "Squawk!"
  end
end

class Dog
  attr_reader :name, :breed, :greeting

  def initialize(name, breed, greeting = "Woof, I'm #{name} the #{breed}!")
    @name = name
    @breed = breed
    @greeting = greeting
  end
end

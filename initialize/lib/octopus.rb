require './lib/eel'
require './lib/narwhal'

class Octopus
  attr_reader :name, :friend
  def initialize(name, friend)
    @name   = name
    @friend = friend
  end
end

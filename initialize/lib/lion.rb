class Lion
  attr_reader :hash, :name, :sound
  def initialize(hash)
    @name = hash[:name]
    @sound = hash[:sound]
  end
end

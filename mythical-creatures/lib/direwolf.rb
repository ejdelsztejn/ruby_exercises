class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name              = name
    @home              = home
    @size              = size
    @starks_to_protect = []
  end

  def hunts_white_walkers?
    true unless @starks_to_protect.size > 0
  end

  def protects(stark)
    return false if stark.location != home
    return false if starks_to_protect.length >= 2

    @starks_to_protect << stark
    stark.change_safe_status
  end

  def leaves(stark)
    return stark unless @starks_to_protect.include?(stark)

    @starks_to_protect.delete(stark)
    stark.change_safe_status
  end
end

class Stark
  attr_reader :name, :location, :is_safe

  def initialize(name, location = "Winterfell")
    @name        = name
    @location    = location
    @is_safe     = false
  end

  def safe?
    is_safe
  end

  def change_safe_status
    @is_safe = !is_safe
  end

  def house_words
    return 'The North Remembers' if safe?
    return 'Winter is Coming' if !safe?
  end
end

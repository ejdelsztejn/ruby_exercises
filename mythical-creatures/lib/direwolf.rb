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
    if stark.location == home
      @starks_to_protect << stark unless starks_to_protect.length >= 2
      stark.change_safe_status
    end
  end

  def leaves(stark)
    if @starks_to_protect.include?(stark)
      @starks_to_protect.delete(stark)
      stark.change_safe_status
    else
      stark
    end
  end
end

class Stark
  attr_reader :name, :location

  def initialize(name, location = "Winterfell")
    @name        = name
    @location    = location
    @safe        = false
  end

  def safe?
    @safe
  end

  def change_safe_status
    if @safe == true
      @safe = false
    else
      @safe = true
    end
  end

  def house_words
    if @safe == true
      return 'The North Remembers'
    elsif @safe == false
      return 'Winter is Coming'
    end
  end
end

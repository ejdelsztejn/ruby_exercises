class Centaur
  attr_reader :name, :breed, :cranky_count

  def initialize(name, breed)
    @name         = name
    @breed        = breed
    @cranky       = false
    @standing     = true
    @laying       = false
    @cranky_count = 0
    @rested       = false
    @sick         = false
  end

  def shoot
    if @cranky == false && @laying == false
      @cranky_count += 1
      @cranky = true if @cranky_count >= 3
      return "Twang!!!"
    else
      return "NO!"
    end
  end

  def run
    if @cranky == false && @laying == false
      @cranky_count += 1
      @cranky = true if @cranky_count >= 3
      return "Clop clop clop clop!!!"
    else
      return "NO!"
    end
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def sleep
    if @standing == true
      return "NO!"
    else
      @cranky = false
      @cranky_count = 0
    end
  end

  def rested?
    @rested
  end

  def drink_potion
    if @standing == true && @rested == false
      @rested = true
    elsif @standing == true && @rested == true
      @sick = true
      "Ohhh.. I don't feel so good..."
    else
      "No way, I'll get a cramp if I drink that now!"
    end
  end

  def sick?
    @sick
  end
end

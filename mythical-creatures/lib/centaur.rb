class Centaur
  attr_reader :name, :breed, :cranky, :standing, :cranky_count, :rested, :sick

  def initialize(name, breed)
    @name         = name
    @breed        = breed
    @cranky       = false
    @standing     = true
    @cranky_count = 0
    @rested       = false
    @sick         = false
  end

  def shoot
    if cranky == false && standing == true
      @cranky_count += 1
      @cranky = true if cranky_count >= 3
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    if cranky == false && standing == true
      @cranky_count += 1
      @cranky = true if cranky_count >= 3
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    cranky
  end

  def standing?
    standing
  end

  def laying?
    !standing
  end

  def stand_up
    @standing = true
  end

  def lay_down
    @standing = false
  end

  def sleep
    if standing == true
      "NO!"
    else
      @cranky = false
      @cranky_count = 0
    end
  end

  def rested?
    rested
  end

  def drink_potion
    if standing == true && rested == false
      @rested = true
    elsif standing == true && rested == true
      @sick = true
      "Ohhh.. I don't feel so good..."
    else
      "No way, I'll get a cramp if I drink that now!"
    end
  end

  def sick?
    sick
  end
end

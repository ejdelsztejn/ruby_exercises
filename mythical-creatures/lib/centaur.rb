require 'pry'
class Centaur
  attr_reader :name, :breed, :cranky_count

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @cranky_count = 0
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
end

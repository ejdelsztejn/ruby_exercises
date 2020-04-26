require './lib/bag'

class TrickOrTreater
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def bag
    @bag
  end

  def has_candy?
    !bag.empty?
  end

  def candy_count
    bag.count
  end
end

jessye = TrickOrTreater.new("witch")
p jessye

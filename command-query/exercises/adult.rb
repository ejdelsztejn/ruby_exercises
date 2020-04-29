class Adult
  attr_reader :drink_count
  def initialize
    @drink_count = 0
  end

  def sober?
    true if drink_count < 3
  end

  def consume_an_alcoholic_beverage
    @drink_count += 1
  end
end

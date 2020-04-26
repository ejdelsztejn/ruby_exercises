class LeatherChair
  attr_reader :faded

  def initialize
    @faded = false
  end

  def faded?
    "New chairs are NOT faded." if faded == false
    "Exposed chairs are faded." if faded == true
  end

  def expose_to_sunlight
    @faded = true
  end
end

class RollCall
  attr_reader :names
  def initialize
    @names = []
  end

  def <<(name)
    @names << name
  end

  def longest_name
    longest_name = ''
    @names.each do |name|
      longest_name = name if name.length > longest_name.length
    end
    return longest_name
  end
end

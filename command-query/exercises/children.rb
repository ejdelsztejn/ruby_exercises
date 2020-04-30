require './exercises/child'

class Children
  attr_reader :children_list
  def initialize
    @children_list = {}
  end

  def <<(child)
    @children_list[child.name] = child.age
  end

  def eldest
    return nil if children_list.empty?
    eldest = children_list.invert.to_a.sort.to_h.invert.first
  end
end

require './exercises/product'

class Catalogue
  attr_reader :items
  def initialize
    @items = {}
  end

  def <<(product)
    @items[product.item] = product.price
  end

  def cheapest
    @items.invert.to_a.sort[0][1] unless @items.empty?
  end
end

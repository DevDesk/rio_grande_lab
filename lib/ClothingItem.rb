require_relative 'Item.rb'
class ClothingItem < Item
  attr_reader :sizes

  def initialize name, price, weight = 0
    super(name, price, weight)
    @sizes = []
  end
end
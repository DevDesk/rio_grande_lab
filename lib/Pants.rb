require_relative 'ClothingItem.rb'
class Pants < ClothingItem
  # attr_accessor :download_size

  def initialize name, price, weight = 0
    super(name, price, weight)
  end
end
require_relative 'Item.rb'
class DigitalItem < Item
  attr_accessor :download_size

  def initialize name, price, download_size = 0
    super(name, price)
    @quantity = 1
    @weight = -1
    @download_size = 0   #should be @download_size = download_size
  end

  def sell amount
    @quantity
    # true
  end

  def stock amount
    @quantity
    # false
  end

  def return amount
    @quantity
    # true
  end

end

require_relative 'Item.rb'
class Cd < Item
    attr_accessor :tracks, :artist, :run_time

    def initialize name, price
        super(name, price)
        @tracks = ""
        @artist = ""
    end
    
end
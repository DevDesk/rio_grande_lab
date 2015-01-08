require_relative 'Item.rb'
class Cd < Item

    attr_accessor :run_time, :tracks, :artist

    def initialize name, price
        super(name, price)
        @run_time=""
        @tracks=0
        @artist=""
    end
end
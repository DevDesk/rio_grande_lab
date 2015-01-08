require_relative 'DigitalItem.rb'
class Song < DigitalItem

    attr_accessor :run_time, :tracks, :artist

    def initialize name, price
        super(name, price)
        @run_time=""
        @tracks=0
        @artist=""
    end
end
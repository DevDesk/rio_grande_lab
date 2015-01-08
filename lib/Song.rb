require_relative 'DigitalItem.rb'

class Song < DigitalItem
    attr_accessor :tracks, :artist, :run_time

    def initialize name, price
        super(name, price)
        @artist = ""
    end

end
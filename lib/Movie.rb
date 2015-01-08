require_relative 'DigitalItem.rb'

class Movie < DigitalItem
    attr_accessor :run_time, :director, :producer

    def initialize name, price
        super(name,price)
        @director = ""
        @producer = ""
    end
end
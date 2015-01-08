require_relative 'Item.rb'

class Bluray < Item
    attr_accessor :run_time, :director, :producer

    def initialize name, price
        super(name, price)
        @director = ""
        @producer = ""
    end

end
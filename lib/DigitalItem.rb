require_relative 'Item.rb'
class DigitalItem < Item

    def initialize name, price
        super(name, price)
        @quantity=1
    end

    def stock amount
        false
    end

    def sell amount
        true
    end
    
    def return amount
        true
    end

end
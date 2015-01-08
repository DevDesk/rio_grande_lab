require_relative 'DigitalItem.rb'
class EBook < DigitalItem

    attr_accessor :author, :pages

    def initialize name, price
        super(name,price)
        @pages=0
        @author=""
    end
end
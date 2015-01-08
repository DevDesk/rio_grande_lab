require_relative 'Item.rb'
class Book < Item

    attr_accessor :author, :pages

    def initialize name, price
        super(name,price)
        @pages=0
        @author=""
    end
end
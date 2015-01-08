class Item
    attr_reader :quantity, :ship_price_per_oz
    attr_accessor :name, :price, :description, :run_time, :weight, :ship_price

#@@ship_price_per_oz = 1.2

    def initialize name, price, weight = 0
        @name = name
        @price = price
        @quantity = 0
        @description = ""
        @run_time = 0
        @weight = 0                 #weight
        @ship_price_per_oz = 1.2
        @ship_price = 0
    end

    def sell amount
        if @quantity >= amount
            @quantity -= amount
            true
        else
            false
        end
    end

    def stock amount
        @quantity += amount
        true
    end

    def return amount
        @quantity += amount
        true
    end

    def ship_price
        if @weight >= 0
            @ship_price += @weight * @ship_price_per_oz
            true
        else
            false
        end
    end
    #def ship_price
#     return false if #weight == -1
#     @@ship_price_per_oz * weight
#    end
end
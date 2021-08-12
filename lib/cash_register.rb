class CashRegister

    attr_accessor :discount, :total, :items, :savings, :quantity

    def initialize(discount = 0)
        @total = 0
        @savings = 0
        @discount = discount.to_f
        @items = []
    end

    def add_item(name, price, quantity = 1)
        @quantity = quantity
        x = 0
        while x < quantity
            self.items << name
            x += 1
        end
        @price = price.to_f
        self.total += @price*quantity

    end

    def apply_discount
        if @discount != 0
            @savings = @discount/100*@total
            self.total -= savings
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        last_amount = (@price - @savings)*quantity
        self.total -= last_amount

    end
end



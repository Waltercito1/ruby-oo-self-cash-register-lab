require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = []
    end

    def add_item(title, price, quantity = 1)
        @last_transaction << price << quantity
        if quantity > 0
            self.total += (price * quantity)
            quantity.times { @items << title }
        else
            self.total += price
        end
    end
    
    def apply_discount
        if self.discount > 0
            self.total = self.total - ((self.total * self.discount)/ 100)
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        return @items    
    end


    def void_last_transaction
        self.total = self.total - (@last_transaction[0] * @last_transaction[1])
    end
   
end


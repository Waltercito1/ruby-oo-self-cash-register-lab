require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        #@items << title
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
        
    end
   
end


require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :added_items, :price
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @added_items = []
  end
  
  def add_item(items, price, quantity = 1)
    self.total = self.total + price * quantity
    quantity.times{ self.added_items << items}
  end
   
  def apply_discount
     if @discount == 0 
        return "There is no discount to apply."
     else self.total = self.total-self.total*@discount/100
        return "After the discount, the total comes to $#{self.total}."
     end
  end
  

    
  def items
    @added_items
  end
      
      
  def void_last_transaction
    #know what the last item(s) were 
    #know quantity
    #know price
    # then subtract from total price and items 
   
   #binding.pry
  end
  
      
       
end

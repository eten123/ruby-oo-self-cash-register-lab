require 'pry'
class CashRegister
attr_accessor :discount, :total, :title, :price
#we have to use the attr_accesor to finish and initalizing all the values we want
    def initialize (discount=20)
        @total = 0   #sets instance variable total to zero
        @discount = discount
        @title = title
    #binding.pry
    end

    #def discount  #must make a gettter method to go along with discount setter in the 
     #   @discount #initalize to finish setting up the method and argument discount
                 #or instead of this method we can just create a attr_accessor above
   # end

#    def total   this is incorrect because we need to put total in the class method
#     @total      and make it a class instance so that we can return it anywyhere in
#    end           the method

    def add_item (title, price, quantity = 1)
         @price = price  # we have to set the instance variable to a value here to get things going and store price as something and whatever this is
                         #just is stored and returned in the attr_accessor
         @total += price*quantity
        #  @last_transaction_amount = @total
        #  @total
     end



     def apply_discount ()
        if @discount > 0 #we need a conditon beause what if there is no discount
             @discount = @discount/100.to_i #set amount variable equal to operation
             self.total -= @discount #remove the amount above from the total
             return "After the discount, the total comes to $#{@total}."
         else
             return "There is no discount to apply."
         end
     end
end



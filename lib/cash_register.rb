# require 'pry'
# class CashRegister
# attr_accessor :discount, :total, :title, :price, :items, :last_transaction
# #we have to use the attr_accesor to finish and initalizing all the values we want
#     def initialize (discount=20)
#         @total = 0   #sets instance variable total to zero
#         @discount = discount
#         @title = title
#         @items = []
#     #binding.pry
#     end

#     #def discount  #must make a gettter method to go along with discount setter in the 
#      #   @discount #initalize to finish setting up the method and argument discount
#                  #or instead of this method we can just create a attr_accessor above
#    # end

# #    def total   this is incorrect because we need to put total in the class method
# #     @total      and make it a class instance so that we can return it anywyhere in
# #    end           the method

#     def add_item (title, price, quantity = 1)
#         @price = price  # we have to set the instance variable to a value here to get things going and store price as something and whatever this is
#                          #just is stored and returned in the attr_accessor
#         if quantity>1
#             i=0
#         while i<quantity
#                 @items << title
#                 i+=1
#             end

#         else
#             @items << title
#         end
#          @total += price*quantity
#         @last_transaction = @total
#         @total
#      end



#      def apply_discount ()
#         if @discount > 0 #we need a conditon beause what if there is no discount
#              @discount = @discount/100.to_i #set amount variable equal to operation
#              self.total = self.total - (self.total * @discount) #remove the amount above from the total
#              return "After the discount, the total comes to $#{@total}."
#          else
#              return "There is no discount to apply."
#          end
#      end
# end



class CashRegister

    attr_accessor :total, :discount, :last_transaction_amount, :items
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end
  
  
    def add_item(title,price,quantity = 1)
      if quantity>1
        i=0
        while i<quantity
          @items << title
          i+=1
        end
      else
        @items << title
      end
      @total += price*quantity
      @last_transaction_amount = @total
      @total
    end
  
    def apply_discount()
      if @discount > 0
        @discount = @discount/100.to_f
        @total = @total - (@total * (@discount))
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
    end
  
  
    def void_last_transaction()
      @total -= @last_transaction_amount
    end
  
  end
  
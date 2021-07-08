class Order < ApplicationRecord
  #seria o nosso pedido
  #belongs_to :user
  belongs_to :cart
  has_one :product

  #before_save :set_unit_price
  #before_save :set_total_price
  #after_create :change_total
    
  #def change_total
  #    cart.total += unit_price*quantity
  #    cart.save  
  #end

  #def unit_price
  #    if persisted?
  #        self[:unit_price]
          
   #   else
  #         product.price
  #    end
  # end

  #def total_price
  #      unit_price * quantity
  #end

  #private
  #    def set_unit_price
  #       self[:unit_price] = unit_price
  #    end

  #    def set_total_price
  #      self[:total_price] = quantity * set_unit_price
  #    end

end


    

  
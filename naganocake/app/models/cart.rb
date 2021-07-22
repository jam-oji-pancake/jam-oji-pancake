class Cart < ApplicationRecord
  belongs_to :customer
  belongs_to :item
  
  
  def subtotal_price
    item.price * count
  end  
  
  # def cart_price
  #   carts.to_a.sum { |cart| cart.total_price}
  # end 
  
end

class OrderItem < ApplicationRecord
   belongs_to :item
   belongs_to :order

   enum create_status: {着手不可: 0, 製作待ち: 1, 製作中: 2, 製作完了: 3 }

  def subtotal_price
    item.add_tax_price * count
  end

#   def created
#     self.where(create_status: 3)
#   end

end

class Item < ApplicationRecord
   belongs_to :genre
   has_many :carts, dependent: :destroy
   has_many :order_items, dependent: :destroy

   attachment :image

   enum is_sale: {販売中: true, 販売停止中: false }

   def add_tax_price
    (self.price * 1.10).round
   end

# //= require jquery3
# //= require popper
# //= require bootstrap-sprockets
end

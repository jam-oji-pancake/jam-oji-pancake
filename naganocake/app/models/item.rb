class Item < ApplicationRecord
   belongs_to :genre
   has_many :carts, dependent: :destroy
   has_many :order_items, dependent: :destroy

   validates :name, presence: true
   validates :introduction, presence: true
   validates :price, presence: true
   validates :is_sale, presence: true
   validates :genre_id, presence: true

   attachment :image

   enum is_sale: {販売中: true, 販売停止中: false }

   def add_tax_price
    (self.price * 1.10).round
   end



end

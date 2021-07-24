class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy

  enum payment: {クレジットカード: 1, 銀行振込: 0 }
  enum delivery_adress: {ご自身の住所: 0, 新しいお届け先: 2 }

  # def perfect_price
  #   self.send_cost + Cart.subtotal_price
  # end

end

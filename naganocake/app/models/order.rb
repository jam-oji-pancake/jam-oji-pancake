class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy

  enum payment: {クレジットカード: 1, 銀行振込: 0 }
  enum delivery_adress: {ご自身の住所: 0, 新しいお届け先: 2 }
def subtotal_price
    item.add_tax_price * count
end

end

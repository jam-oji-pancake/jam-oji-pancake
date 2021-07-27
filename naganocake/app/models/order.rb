class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy

  validates :customer_id, presence: true
  validates :send_cost, presence: true
  validates :order_status, presence: true
  validates :post_code, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :perfect_price, presence: true
  validates :payment, presence: true

  enum payment: {クレジットカード: 1, 銀行振込: 0 }
  enum delivery_adress: {ご自身の住所: 0, 登録済み住所: 1, 新しいお届け先: 2 }
  enum order_status: {入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3, 発送済み: 4 }

  def total_count
    self.order_items.sum(:count)
  end

  # def 
  #   self.order_items.where(create_status: 3)
  # end

  # def perfect_price
  #   self.send_cost + Cart.subtotal_price
  # end

end

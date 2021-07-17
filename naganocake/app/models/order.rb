class Order < ApplicationRecord
  belongs_to :custmer
  has_many :order_items, dependent: :destroy
end

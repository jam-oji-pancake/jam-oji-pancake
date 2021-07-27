class Delivery < ApplicationRecord
  belongs_to :customer
   
  validates :post_code, presence: true
  validates :address, presence: true
  validates :name, presence: true

  def view_post_address_name
    '〒' + self.post_code + self.address + self.name
  end

end

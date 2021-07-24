class Delivery < ApplicationRecord
   belongs_to :customer

  def view_post_address_name
    '〒' + self.post_code + self.address + self.name
  end

end

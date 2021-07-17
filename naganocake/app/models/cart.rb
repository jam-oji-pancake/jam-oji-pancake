class Cart < ApplicationRecord
  belongs_to :custmer
  belongs_to :item
end

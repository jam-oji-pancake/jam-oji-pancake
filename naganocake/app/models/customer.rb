class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :deliveries
  has_many :carts

  enum is_valid: {退会: true, 有効: false }

  def active_for_authentication?
    super && (self.is_valid == '有効')
  end

  def full_name
    self.first_name + " " + self.last_name
  end

end

class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :deliveries
  has_many :carts

  has_many :orders
  has_many :deliveries
  has_many :carts

  # enum is_valid: {有効: true, 退会: false }
  has_many :orders
  has_many :deliveries
  has_many :carts
  def active_for_authentication?
    super && (self.is_valid == false)
  end

  def full_name
    self.first_name + " " + self.last_name
  end

end

class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum is_valid: {有効: true, 退会: false }

  def active_for_authentication?
    super && (self.is_valid == false)
  end

end

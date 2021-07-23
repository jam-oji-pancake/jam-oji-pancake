class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # enum is_valid: {退会: true, 有効: false }

  def active_for_authentication?
    super && (self.is_valid == false)
  end

end

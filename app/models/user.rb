class User < ApplicationRecord
  has_secure_password
  validates :email, :account_type, presence: true
  has_many :reservations
  def up_comming_reservation?(restaurant)

  end
end

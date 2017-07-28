class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  has_many :reservations
  def up_comming_reservation?(restaurant)

  end
end

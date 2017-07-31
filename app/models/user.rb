class User < ApplicationRecord
  has_secure_password
  validates :email, :account_type, presence: true
  has_many :reservations
  has_many :restaurants
  def up_comming_reservation?(restaurant)

  end
end

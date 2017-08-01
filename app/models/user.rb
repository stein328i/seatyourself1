class User < ApplicationRecord
  has_secure_password
  validates :email, :account_type, :account_type, presence: true
  has_many :reservations
  has_many :restaurants

  def self.up_comming_reservation
    @coming_reservation_for_next_week = Reservation.coming_reservation_for_next_week
  end

  # def comming_reservation
  #   if current_user.id == reservation.user_id
  #   end
  # end
  # def self.list_of_restaurant_coming_for_next_week
  #   @list_of_restaurant_coming_for_next_week =
  #   Restaurant.find(up_comming_reservation.restaurant_id)
  # end

end

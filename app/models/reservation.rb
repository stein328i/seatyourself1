class Reservation < ApplicationRecord
  validates :party_size, numericality: {less_than_or_equal_to: 30}
  # validates :reservation_date, presence: true
  # validates :restaurant_opening_hours

  belongs_to :restaurant
  belongs_to :user

  # def self.reservation_date
  #   errors.add(:reservation_date, "can't be in the past ") if !reservation_date.black? and reservation_date < Date.today
  # end
  def self.restaurant_opening_hours
    opening_time = Restaurant.opening_time
    closing_time = Restaurant.closing_time
    Reservation.where("time > ? and time < ?", opening_time,
    closing_time)
  end

end

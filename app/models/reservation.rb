class Reservation < ApplicationRecord
  # validates :party_size, numericality: {less_than_or_equal_to: 30}, presence: true
  # custom methods of validate should be single "validate", Not "validates"
  validate :reservation_possible
  validate :reservations_party_size
  validate :reservation_available_date
  validate :restaurant_business_hours

  belongs_to :restaurant
  belongs_to :user

  def reservation_possible
    if restaurant.current_capacity >= restaurant.max_capacity
      errors.add(:base, "reservation is not possible at this time")
    end
  end

  def reservations_party_size
    if restaurant.party_size.to_i < self.party_size.to_i
      errors.add(:base, "You can't make reservation. sorry!")
    end
  end

  def reservation_available_date
    if self.date < Time.now
      errors.add(:base, "past date is not available to make reservation")
    end

  end

  def restaurant_business_hours
    if restaurant.opening_time >= self.time || restaurant.closing_time <= self.time
      errors.add(:base, "Restaurant is not open.")
    end
  end

  # def self.reservation_date
  #   errors.add(:reservation_date, "can't be in the past ") if !reservation_date.black? and reservation_date < Date.today
  # end
  # def restaurant_opening_hours
  #   opening_time = Restaurant.opening_time
  #   closing_time = Restaurant.closing_time
  #   Reservation.where("time > ? and time < ?", opening_time,
  #   closing_time)
  # end


end

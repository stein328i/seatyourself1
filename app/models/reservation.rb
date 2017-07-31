class Reservation < ApplicationRecord
  validates :party_size, numericality: {less_than_or_equal_to: 30}
  # validates :reservation_date, presence: true
  validates :time, numericality: {greater_than_or_equal_to: 11, less_than_or_equal_to: 20}

  belongs_to :restaurant
  belongs_to :user
  #
  # def self.reservation_date
  #   errors.add(:reservation_date, "can't be in the past ") if !reservation_date.black? and reservation_date < Date.today
  # end
  # def self.party_size
  #
  # end

end

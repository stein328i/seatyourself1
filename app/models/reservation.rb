class Reservation < ApplicationRecord
  validates :party_size, numericality: {only_integer: true}
  validates :date, presence: true
  validates :time, presence: true

  belongs_to :restaurant
  belongs_to :user

end

class Reservation < ApplicationRecord
  validates :name, presence: true
  validates :party_size, numericality: {only_integer: true}
  validates :date, presence: true
  validates :time, presence: true

  belongs_to :restaurant

end

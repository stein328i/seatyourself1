class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :user

  def current_capacity
    reservations.map { |r| r.party_size.to_i }.sum
  end

  

end

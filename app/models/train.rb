class Train < ApplicationRecord
  validates_presence_of :number
  has_many :reservations

  def available_seats
    ["1a", "1b", "1c", "1d", "1f"]
  end
end

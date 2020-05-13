class Style < ApplicationRecord
  # belongs_to :user
  has_many :style_locations
  has_many :locations, through: :style_locations

  validates :trip_name, presence: true

  #   def initialize(trip_name)
  #     @trip_name = trip_name
  #   end

  #   def trip_name
  #     @trip_name
  #   end

  #   def requests
  #     Request.where(trip_name: id)
  #   end
end

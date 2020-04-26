class Style < ApplicationRecord
  belongs_to :user
  belongs_to :requests

  def initialize(trip_name)
    @trip_name = trip_name
  end

  def trip_name
    @trip_name
  end

    # def requests
    #   Request.where(trip_name: id)
  end
end

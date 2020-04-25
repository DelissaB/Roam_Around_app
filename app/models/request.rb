class Request < ApplicationRecord
  belongs_ to trip_styles
  belongs_to :user
end

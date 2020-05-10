class Location < ApplicationRecord
  # belongs_to :user
  has_many :styles
  has_many :styles, through: :style_locations
end

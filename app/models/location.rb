class Location < ApplicationRecord
  # belongs_to :user
  has_many :style_locations
  has_many :styles, through: :style_locations

  validates :name, presence: true
end

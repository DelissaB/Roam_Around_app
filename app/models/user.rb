class User < ApplicationRecord
  has_many :requests
  has_many :trip_styles; through requests

  has_secure_password
  validates :email, presence: true, uniqueness: true
end

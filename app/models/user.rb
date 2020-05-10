class User < ApplicationRecord
  has_many :requests

  # def requests
  # end

  # def trip_styles
  # end

  has_secure_password
  validates :email, presence: true, uniqueness: true
end

#Has a user_id on the requests table
#One to many association
#A user can have many requests
# requests associted via "user_id"

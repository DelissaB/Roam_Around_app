class Style < ApplicationRecord
  belongs_to :user
  belongs_to :requests
end

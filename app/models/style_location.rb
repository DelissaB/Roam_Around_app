class StyleLocation < ApplicationRecord
  belongs_to :style
  belongs_to :location
end

#have style_id and location_id

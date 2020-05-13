# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "http"

# #Girlfriend Getaway
# # https://www.triposo.com/api/20200405/location.json?child_tag_labels=wineries|sightseeing|shopping&count=50&fields=intro,id,tag_labels,country_id&account=DIZGDG1D&token=

# response = HTTP.get("https://www.triposo.com/api/20200405/location.json?child_tag_labels=wineries|sightseeing|shopping&count=50&fields=intro,id,tag_labels,country_id&account=DIZGDG1D&token=
#   ")
# response.parse["results"].each do |result|
#   location = Location.create(
#     name: result["id"],
#     intro: result["intro"],
#     sightseeing_score: result["sightseeing_score"],
#   )
#   StyleLocation.create(
#     style_id: 1,
#     location_id: location.id,
#   )
#   p result["id"]
#   p result["intro"]
#   p result["sightseeing_score"]
#   # break
# end

# # Couples_trip
# response = HTTP.get("https://www.triposo.com/api/20200405/location.json?child_tag_labels=nightlife|sightseeing|beaches|dancing&count=50&fields=intro,id,tag_labels,country_id&account=DIZGDG1D&token=")
# response.parse["results"].each do |result|
#   location = Location.create(
#     name: result["id"],
#     intro: result["intro"],
#     sightseeing_score: result["sightseeing_score"],
#     # beaches_score: result["beaches_score"],
#     # dancing_score: result["dancing_score"],
#   )
#   StyleLocation.create(
#     style_id: 2,
#     location_id: location.id,
#   )
#   p result["id"]
#   p result["intro"]
#   p result["sightseeing_score"]
#   # p result["beaches_score"]
#   # p result["dancing_score"]
# end
# break

# Traveling_with_kids
response = HTTP.get("https://www.triposo.com/api/20200405/location.json?child_tag_labels=character-Kid_friendly|amusementparks|sightseeing&order_by=score&count=50&fields=intro,id,tag_labels,country_id&account=DIZGDG1D&token=7vx3x52tkuh2jlaa2z7ybk5cqz3iiphy")
response.parse["results"].each do |result|
  location = Location.create(
    name: result["id"],
    intro: result["intro"],
    sightseeing_score: result["sightseeing_score"],
    amusementparks_score: result["amusementparks_score"],
  )
  StyleLocation.create(
    style_id: 3,
    location_id: location.id,
  )
  p result["id"]
  p result["intro"]
  p result["sightseeing_score"]
  p result["amusementparks_score"]
  # p result["character-Kid_friendly_score"]
end

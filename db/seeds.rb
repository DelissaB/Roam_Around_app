# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "http"
Location.destroy_all
StyleLocation.destroy_all

# #Girlfriend Getaway
# # https://www.triposo.com/api/20200405/location.json?child_tag_labels=wineries|sightseeing|shopping&count=50&fields=intro,id,tag_labels,country_id&account=DIZGDG1D&token= (Original code)

# https://www.triposo.com/api/20200405/location.json?child_tag_labels=wineries|sightseeing|poitype-Shopping_centre&type=city&fields=id,name,intro,country_id,snippet_language_info,climate,score,images&account=DIZGDG1D&token=     (updated with images)

response = HTTP.get("https://www.triposo.com/api/20200405/location.json?child_tag_labels=wineries|sightseeing|poitype-Shopping_centre&type=city&fields=id,name,intro,country_id,snippet_language_info,climate,score,images&account=DIZGDG1D&token=xizczrl4v0z5jj1ylc86ws4otecc5v13")

response.parse["results"].each do |result|
  location = Location.create(
    # id: result["id"],
    name: result["name"],
    intro: result["intro"],
    country_id: result["country_id"],
    sightseeing_score: result["sightseeing_score"],
    snippet_language_info: result["snippet_language_info"],
    wineries_score: result["wineries_score"],
    Shopping_centre_score: result["poitype-Shopping_centre"],
    images: result["images"][1]["source_url"],
    score: result["score"],
    climate: result["climate"],
  )
  StyleLocation.create(
    style_id: 1,
    location_id: location.id,
  )
  p result["id"]
  p result["name"]
  p result["intro"]
  p result["country_id"]
  p result["sightseeing_score"]
  p result["snippet_language_info"]
  p result["wineries_score"]
  p result["sightseeing_score"]
  p result["poitype-Shopping_centre"]
  p result["images"][1]["source_url"]
  p result["score"]
  p result["climate"]
  # break
end

# # Couples_trip
# response = HTTP.get("https://www.triposo.com/api/20200405/location.json?child_tag_labels=nightlife|sightseeing|beaches|dancing&count=50&fields=intro,id,tag_labels,country_id&account=DIZGDG1D&token=")  (original)

# https://www.triposo.com/api/20200405/location.json?child_tag_labels=nightlife|sightseeing|dancing|district_beach&score=>=9&type=city&order_by=score&count=50&fields=id,name,intro,country_id,snippet_language_info,climate,score,images&account=DIZGDG1D&token= (updated with images)

response = HTTP.get("https://www.triposo.com/api/20200405/location.json?child_tag_labels=nightlife|sightseeing|dancing|district_beach&score=>=9&type=city&order_by=score&count=50&fields=id,name,intro,images,country_id,snippet_language_info,climate,score&account=DIZGDG1D&token=xizczrl4v0z5jj1ylc86ws4otecc5v13")

response.parse["results"].each do |result|
  location = Location.create(
    # id: result["id"],
    name: result["name"],
    intro: result["intro"],
    sightseeing_score: result["sightseeing_score"],
    district_beach_score: result["district_beach_score"],
    dancing_score: result["dancing_score"],
    snippet_language_info: result["snippet_language_info"],
    nightlife_score: result["nightlife_score"],
    images: result["images"][1]["source_url"],
    climate: result["climate"],
    score: result["score"],
  )
  StyleLocation.create(
    style_id: 2,
    location_id: location.id,
  )
  # p result["id"]
  p result["name"]
  p result["intro"]
  p result["sightseeing_score"]
  p result["district_beach_score"]
  p result["dancing_score"]
  p result["snippet_language_info"]
  p result["nightlife_score"]
  p result["images"][1]["source_url"]
  p result["climate"]
  p result["score"]
  # break
end

# # # # Traveling_with_kids
# # # response = HTTP.get("https://www.triposo.com/api/20200405/location.json?child_tag_labels=character-Kid_friendly|amusementparks|sightseeing&order_by=score&count=50&fields=intro,id,tag_labels,country_id&account=DIZGDG1D&token=") (original)

# # # https://www.triposo.com/api/20200405/location.json?child_tag_labels=character-Kid_friendly&score=>=8&order_by=score&fields=id,name,intro,country_id,snippet_language_info,climate,score,images&account=DIZGDG1D&token=7vx3x52tkuh2jlaa2z7ybk5cqz3iiphy (updated with images)

response = HTTP.get("https://www.triposo.com/api/20200405/location.json?child_tag_labels=character-Kid_friendly&score=>=8&order_by=score&fields=id,name,intro,country_id,snippet_language_info,climate,score,images&account=DIZGDG1D&token=xizczrl4v0z5jj1ylc86ws4otecc5v13")

response.parse["results"].each do |result|
  location = Location.create(
    name: result["name"],
    intro: result["intro"],
    sightseeing_score: result["sightseeing_score"],
    # amusementparks_score: result["amusementparks_score"],
    snippet_language_info: result["snippet_language_info"],
    Kid_friendly_score: result["character-Kid_friendly_score"],
    images: result["images"][1]["source_url"],
    climate: result["climate"],
    score: result["score"],
  )
  StyleLocation.create(
    style_id: 3,
    location_id: location.id,
  )
  # p result["id"]
  p result["intro"]
  p result["sightseeing_score"]
  p result["amusementparks_score"]
  p result["character-Kid_friendly_score"]
  p result["images"][1]["source_url"]
  p result["climate"]
  p result["score"]
end

# # # # Original way written- example to note name and id correlation
# # # # name: result["id"],
# # # #     intro: result["intro"],
# # # #     sightseeing_score: result["sightseeing_score"],
# # # #     amusementparks_score: result["amusementparks_score"],
# # # #   )
# # # #   StyleLocation.create(
# # # #     style_id: 3,
# # # #     location_id: location.id,
# # # #   )
# # # #   p result["id"]
# # # #   p result["intro"]
# # # #   p result["sightseeing_score"]
# # # #   p result["amusementparks_score"]
# # # #   # p result["character-Kid_friendly_score"]

class AddDistrictBeachScoretoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :district_beach_score, :float
  end
end

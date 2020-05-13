class AddAmusementParkScoretoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :amusementparks_score, :integer
  end
end

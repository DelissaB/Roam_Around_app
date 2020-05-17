class AddNightlifeScoretoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :nightlife_score, :float
  end
end

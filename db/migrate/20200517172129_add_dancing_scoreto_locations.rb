class AddDancingScoretoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :dancing_score, :float
  end
end

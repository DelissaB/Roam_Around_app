class AddWineriesScoretoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :wineries_score, :float
  end
end

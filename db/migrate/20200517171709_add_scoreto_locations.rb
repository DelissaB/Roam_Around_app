class AddScoretoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :score, :float
  end
end

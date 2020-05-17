class AddShoppingCentreScoretoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :Shopping_centre_score, :float
  end
end

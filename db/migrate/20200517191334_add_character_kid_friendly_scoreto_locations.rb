class AddCharacterKidFriendlyScoretoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :Kid_friendly_score, :string
  end
end

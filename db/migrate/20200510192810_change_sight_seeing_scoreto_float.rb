class ChangeSightSeeingScoretoFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :locations, :sightseeing_score, "numeric USING CAST(sightseeing_score AS numeric)"
    change_column :locations, :sightseeing_score, :float
  end
end

class AddClimatetoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :climate, :integer
  end
end

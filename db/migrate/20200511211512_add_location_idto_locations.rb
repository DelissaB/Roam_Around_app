class AddLocationIdtoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :Location_id, :integer
  end
end

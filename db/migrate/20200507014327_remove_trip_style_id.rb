class RemoveTripStyleId < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :trip_style_id, :integer
  end
end

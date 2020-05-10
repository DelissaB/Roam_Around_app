class AddTripStyleIdToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :trip_style_id, :integer
  end
end

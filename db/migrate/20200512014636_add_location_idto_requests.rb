class AddLocationIdtoRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :location_id, :integer
  end
end

class RemoveTripStylefromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :trip_style, :string
  end
end

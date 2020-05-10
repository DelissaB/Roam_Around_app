class RemoveSavedTripfromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :saved_trip, :string
  end
end

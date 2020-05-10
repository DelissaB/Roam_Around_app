class RemovePassportfromRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :passport, :string
  end
end

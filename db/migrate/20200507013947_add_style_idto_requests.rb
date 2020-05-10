class AddStyleIdtoRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :style_id, :integer
  end
end

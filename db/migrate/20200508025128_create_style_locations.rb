class CreateStyleLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :style_locations do |t|
      t.integer :style_id
      t.integer :location_id

      t.timestamps
    end
  end
end

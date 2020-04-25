class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :trip_style
      t.string :passport
      t.string :location
      t.string :saved_trip

      t.timestamps
    end
  end
end

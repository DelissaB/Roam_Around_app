class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :intro
      t.string :sightseeing_score
      t.string :integer
      t.string :image

      t.timestamps
    end
  end
end

class CreatePicks < ActiveRecord::Migration[6.0]
  def change
    create_table :picks do |t|
      t.string :name
      t.string :intro
      t.float :sightseeing_score
      t.string :images

      t.timestamps
    end
  end
end

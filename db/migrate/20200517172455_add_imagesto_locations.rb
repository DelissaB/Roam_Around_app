class AddImagestoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :images, :string
  end
end

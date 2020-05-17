class AddCountryIdtoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :country_id, :string
  end
end

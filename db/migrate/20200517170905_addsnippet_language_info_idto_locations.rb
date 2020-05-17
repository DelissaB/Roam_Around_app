class AddsnippetLanguageInfoIdtoLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :snippet_language_info, :string
  end
end

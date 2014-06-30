class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :articles, :is_favorites, :is_favorite
  end
end

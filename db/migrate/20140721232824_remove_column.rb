class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :articles, :is_favorite
  end
end

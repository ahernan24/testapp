class AddFavoritesToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :is_favorites, :boolean, :default => false
  end

end

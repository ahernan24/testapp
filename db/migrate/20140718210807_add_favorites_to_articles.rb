class AddFavoritesToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :is_favorite, :boolean, {:default=>false}
  end
end

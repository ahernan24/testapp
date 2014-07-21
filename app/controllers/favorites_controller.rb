class FavoritesController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    current_user.favorite_articles << @article
      render nothing: true
  end
end
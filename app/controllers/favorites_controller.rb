class FavoritesController < ApplicationController

  def favorite
    @article = Article.find(params[:article_id])
    @user.favorites << @article
    
  end
end
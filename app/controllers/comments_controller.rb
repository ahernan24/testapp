class CommentsController < ApplicationController
  
def create
  @article = Article.find(params[:article_id])
  @comment = @article.comments.build(comment_params)
  binding.pry
  @commment.user_id = current_user.id
  if @comment.save! 
    redirect_to article_path(@article)
  end
end

def destroy
  @article = Article.find(params[:article_id])
  @comment = @article.comments.find(params[:id])
  @comment.destroy
  redirect_to article_path(@article)
end

private
 def comment_params
   params.require(:comment).permit(:commenter, :body, :user_id)
 end
end
 
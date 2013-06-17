class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to @comment.post
  end

  def destroy
    comment = Comment.find(params[:id])
    if current_user != comment.user
      render text: "You can't do that, silly hacker"
    else
      post = comment.post
      comment.destroy
      redirect_to post
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end

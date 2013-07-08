class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.save
    respond_to do |format|
      format.html { redirect_to @comment.post }
      format.js { render 'create' } #create.js.erb
    end
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

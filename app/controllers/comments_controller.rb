class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.build(comment_params)
    # redirect_back
  end




  # def create
  #   @post = Post.find(params[:post_id])
  #   @comment = @post.comments.build(comment_params)
  #   @comment.quother = true if signed_in?
  #   if @comment.save
  #     @new_comment = @post.comments.new
  #     respond_to do |format|
  #       format.html do
  #         flash[:success] = 'Your comment has been posted.'
  #         redirect_to @post
  #       end
  #       format.js
  #     end
  #   else
  #     @new_comment = @comment
  #     respond_to do |format|
  #       format.html { render @post }
  #       format.js { render action: 'failed_save' }
  #     end
  #   end
  # end


  private


  def comment_params
    params.require(:comment).permit(:content)
  end
end




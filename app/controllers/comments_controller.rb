class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(params[:post_id])
    else
      redirect_to new_post_path
    end
  end

  private

  def comment_params
    params.require(:comment)
          .permit(:content)
          .merge(post_id: params[:post_id])
  end

end

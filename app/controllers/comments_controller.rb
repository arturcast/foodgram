class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    if @comment.save
      respond_to :js
    else
      redirect_to root_path, flash: { error: "The comment can't be blank" }
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:text)
        .merge(user_id: current_user.id, post_id: params[:id])
    end
end
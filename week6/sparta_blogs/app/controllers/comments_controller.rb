class CommentsController < ApplicationController

  # before you do anything, do this
  before_action :set_post

  def edit
    @comment = Comment.find params[:id]
  end

  def create
    @comment = @post.comments.create(comment_params)
    @comment.save
    redirect_to @post
  end

  def update
    # find the existing post from our database
    @comment = Comment.find params[:id]
    @comment.update comment_params
    # after the page has been updated, we want to be re-directed to the updated page
    redirect_to @post
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    redirect_to @post
  end

  def set_post
    @post = Post.find params[:post_id]
  end

  def comment_params
    post_params = params.require(:comment).permit(:body, :author)
  end
end

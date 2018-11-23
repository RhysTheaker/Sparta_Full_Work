class PostsController < ApplicationController
  def index
    # on the index page we want to display all the elements in the database
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find params[:id]

  end

  def edit
    @post = Post.find params[:id]
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html{redirect_to @post, notice: "'#{@post.title}' was created"}
      else
        format.html{render :new}
      end
    end
  end

  def update
    # find the existing post from our database
    @post = Post.find params[:id]
    @post.update post_params
    # after the page has been updated, we want to be re-directed to the updated page
    redirect_to @post
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to posts_path
  end

  def post_params
    post_params = params.require(:post).permit( :title, :body, :author)
  end
end

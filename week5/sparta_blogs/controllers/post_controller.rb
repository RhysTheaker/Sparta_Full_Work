class PostsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Index
  get "/" do

    @title = "Blog Posts"
    @posts = Post.all

    erb :"posts/index"
  end

  # New
  get "/new" do
    # @post = {
    #   id: "",
    # }

    @post = Post.new
    @post.id = ""

    erb :"posts/new"
  end

  # Create
  post "/" do
    post = Post.new

    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/"
  end

  get "/:id" do
    # Get the Id from the URL and return an integer
    id = params[:id].to_i
    # Make a single post object available for the page (@post because only want a single post)
    @post = Post.find id

    erb :"posts/show"
  end

  get "/:id/edit" do
    # Get the Id from the URL and return an integer
    id = params[:id].to_i
    # Make a single post object available for the page (@post because only want a single post)
    @post = Post.find id

    erb :"posts/edit"
  end

  put "/:id" do
    id = params[:id].to_i
    post = Post.find id

    # Update title and body
    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/"
  end

  delete "/:id" do
    id = params[:id].to_i

    Post.destroy id

    redirect "/"
  end
end

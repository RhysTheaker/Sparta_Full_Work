class PostsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  $posts = [{
    id: 0,
    title: "Post 1",
    body: "This is the first post"
    },{
    id: 1,
    title: "Post 2",
    body: "This is the second post"
    },{
    id: 2,
    title: "Post 3",
    body: "This is the third post"
    }]

  # Index
  get "/" do

    @title = "Blog Posts"
    @posts = $posts

    erb :"posts/index"
  end

  # New
  get "/new" do
    @ni.post = {
      id: "",
      title: "",
      body: ""
    }

    erb :"posts/new"
  end

  # Create
  post "/" do
    # Create a new post that we want to add to the existing array containing the post information
    new_hoax = {
      id: ($posts.length),
      title: params[:title],
      body: params[:body]
    }

    # push the new post to the existing post array
    $posts.push new_hoax

    # Redirect the page after a new page has been created
    redirect "/#{new_hoax[:id]}"
  end

  get "/:id" do
    # Get the Id from the URL and return an integer
    id = params[:id].to_i
    # Make a single post object available for the page (@post because only want a single post)
    @post = $posts[id]

    erb :"posts/show"
  end

  get "/:id/edit" do
    # Get the Id from the URL and return an integer
    id = params[:id].to_i
    # Make a single post object available for the page (@post because only want a single post)
    @post = $posts[id]

    erb :"posts/edit"
  end

  put "/:id" do
    id = params[:id].to_i

    # post and not @post as it is only used here and nowhere else in the code
    post = $posts[id]

    # Update title and body
    post[:title] = params[:title]
    post[:body] = params[:body]

    # Store updated object in database
    $posts[id] = post

    # After editing the page, we want to be redirected to the now edited page
    redirect "/#{id}"
  end

  delete "/:id" do
    id = params[:id].to_i

    $posts.delete_at(id)

    redirect "/"
  end
end

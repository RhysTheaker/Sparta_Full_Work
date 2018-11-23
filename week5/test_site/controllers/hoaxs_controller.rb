class HoaxsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Index
  get "/" do

    @hoaxs = Hoax.all

    erb :"hoaxs/index"
  end

  # New
  get "/new" do

    @hoax = Hoax.new
    @hoax.id = ""

    erb :"hoaxs/new"
  end

  # Create
  post "/" do
    hoax = Hoax.new

    hoax.name = params[:name]
    hoax.info = params[:info]

    hoax.save

    redirect "/"
  end

  get "/:id" do
    # Get the Id from the URL and return an integer
    id = params[:id].to_i
    # Make a single post object available for the page (@post because only want a single post)
    @hoax = Hoax.find id

    erb :"hoaxs/show"
  end

  get "/:id/edit" do
    # Get the Id from the URL and return an integer
    id = params[:id].to_i
    # Make a single post object available for the page (@post because only want a single post)
    @hoax = Hoax.find id

    erb :"hoaxs/edit"
  end

  put "/:id" do
    id = params[:id].to_i
    hoax = Hoax.find id

    # Update name and info
    hoax.name = params[:name]
    hoax.info = params[:info]

    hoax.save

    redirect "/"
  end

  delete "/:id" do
    id = params[:id].to_i

    Hoax.destroy id

    redirect "/"
  end
end

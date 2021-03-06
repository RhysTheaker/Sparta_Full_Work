class AnimalsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  helpers Sinatra::Cookies

  enable :sessions

  # restfull roots

  # Shows index page
  get "/" do
    # if we haven't visited this page before then tell the computer that we have now visited the page
    if cookies[:visited]
      @show_message = "Welcome Back!"
    end

    # change the value of visited so that it has a value corresponding to the page being visited
    response.set_cookie(:visited, :value => 1, :expires => Time.now + (60 * 60 * 2))

    # display all the animals on the index page
    @animals = Animal.all
    erb :"animals/index"
  end

  # display create new page
  get "/new" do
    # create a new instance of the Animal class
    @animal = Animal.new

    erb :"animals/new"
  end

  # display show page
  get "/:id" do
    id = params[:id].to_i

    if !session[:animals]
      session[:animals] = []
    end

    if !session[:animals].include? id
      session[:animals].push id
    end

    puts session[:animals]

    @animal = Animal.find id

    erb :"animals/show"
  end

  # display edit page
  get "/:id/edit" do
    id = params[:id].to_i

    @animal = Animal.find id

    erb :"animals/edit"
  end

  # create new animal
  post "/" do
    # set up a new instance of our class, named "Animal"
    animal = Animal.new
    # set the attribute of the animal instance to be inputted infortmation, based on the name and fact that has been passed in (note the id is auto generated by our database)
    animal.name = params[:name]
    animal.fact = params[:fact]
    # stores info in our database
    animal.save
    redirect "/"
  end

  # edit/update existing animal
  put "/:id" do
    id = params[:id].to_i
    animal = Animal.find id

    animal.name = params[:name]
    animal.fact = params[:fact]

    animal.save

    redirect "/#{id}"
  end

  # delete existing animal
  delete "/:id" do
    id = params[:id].to_i
    Animal.destroy id
    redirect "/"
  end

end

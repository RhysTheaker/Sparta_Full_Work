require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?

# get the information for this webiste and display to the screen. "/" is the root of the site. Inbetween do and end is the fucntion we want to run when we enter our website
get "/" do
  "<h1>Hello World!</h1>
  <h2>This is my first site</h2>
  <p>Isnt it great</p>"
end

get "/cups" do
  "<h1>Pinda and Arun like stealing cups</h1>"
end

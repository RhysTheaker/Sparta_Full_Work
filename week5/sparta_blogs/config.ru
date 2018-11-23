require "sinatra"
require "sinatra/reloader"
require "sinatra/contrib"
require "pg"

require_relative "controllers/post_controller.rb"
require_relative "models/post.rb"

use Rack::MethodOverride

run PostsController

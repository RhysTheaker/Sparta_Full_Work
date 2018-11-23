require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?
require "pg"

require_relative "controllers/hoaxs_controller.rb"
require_relative "models/hoax.rb"

use Rack::MethodOverride

run HoaxsController

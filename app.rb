require "bundler/setup"

require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "db/connection"
require_relative "models/entry"
require_relative "controllers/entries"

get '/' do
  @entries = Entry.all
  erb :"entries/index"
end

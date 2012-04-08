$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require "sinatra"
require "mongo_mapper"
require "redcarpet"

MongoMapper.connection = Mongo::Connection.new("staff.mongohq.com", 10082, :pool_size => 5, :pool_timeout => 5)
MongoMapper.database   = "grst"
MongoMapper.database.authenticate(ENV["MONGO_USERNAME"], ENV["MONGO_PASSWORD"])

require "marked/app"
require "marked/document"
require "marked/markdown"

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require "sinatra"
require "mongo_mapper"
require "redcarpet"

MongoMapper.connection = Mongo::Connection.new("staff.mongohq.com", 10082, :pool_size => 5, :pool_timeout => 5)
MongoMapper.database   = "grst"
MongoMapper.database.authenticate("grst", "dc89acba9f507f923a5b117882480821")

require "grst/app"
require "grst/document"
require "grst/markdown"

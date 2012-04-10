# About
Sinatra application for sharing markdown. Add your markdown, save it, share it. Hosted version available @ http://markedapp.herokuapp.com.

## Installing

```bash
git clone git@github.com:gristmill/marked.git
cd grst
bundle
```

Then add your database info to `lib/marked.rb`

```ruby
MongoMapper.connection = Mongo::Connection.new("staff.mongohq.com", 10082, :pool_size => 5, :pool_timeout => 5)
MongoMapper.database   = "marked"
MongoMapper.database.authenticate(ENV["MONGO_USERNAME"], ENV["MONGO_PASSWORD"])
```

Start the application by running `rackup` in your CLI.

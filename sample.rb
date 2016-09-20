# sample.rb
require "sinatra"

# bind to all interfaces by default
set :bind, "0.0.0.0"

get "/" do
  "Hello world!"
end
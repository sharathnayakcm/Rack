require_relative 'application'
require_relative 'logging_middleware'
require_relative 'filter_local_host'

use Rack::Reloader, 5
app =
Rack::Builder.new do |builder|
  builder.use FilterLocalHost
  builder.use LoggingMiddleware
  builder.run RackApp.new
end
run app

# app = -> (env) do
#     sleep 3
#     [ 200, { "Content-Type" => "text/plain" }, ["Hello World\n"] ]
#   end

# run app

# #use MiddleApp
# @app = RackApp.new

# run @app

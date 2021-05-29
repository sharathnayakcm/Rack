class FilterLocalHost
    def initialize(app)
      @app = app
    end
  
    def call(env)
      req = Rack::Request.new(env)
      puts "this is teh Ip #{req.ip}"
  
      if req.ip == "127.0.0.1" || req.ip == "::1"
        @app.call(env)
      else
        [403, { 'Content-Type' => 'text/html' }, ['<h1>This is not from local host</h1>']]
      end
    end
  end
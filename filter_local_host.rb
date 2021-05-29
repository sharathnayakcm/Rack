class FilterLocalHost
    def initialize(app)
      @app = app
    end
  
    def call(env)
      req = Rack::Request.new(env)
      if req.ip == "127.0.0.1" || req.ip == "::1"
        @app.call(env)
      else
        [403, { 'Content-Type' => 'text/plain' }, ['403 FORBIDDEN you dont have  permissions ']]
      end
    end
end
# This add the Sleep amd logs the time taken
class LoggingMiddleware
    
  def initialize(app)
    @app = app
  end

  def call(env)
    before = Time.now.to_i
    sleep 2
    status, headers, body = @app.call(env)
    after = Time.now.to_i
    log_message = "App took #{after - before} seconds.to load"

    [status, headers, body << log_message]
  end
end
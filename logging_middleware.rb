# This add the Sleep and logs the time taken
class LoggingMiddleware
    
  def initialize(app)
    @app = app
  end

  def call(env)
    before = Time.now.to_i
    sleep 2
    status, headers, body = @app.call(env)
    after = Time.now.to_i
    log_message = "<h2> App took #{after - before} seconds.to load</h2>"

    [status, headers, body << log_message]
  end
end
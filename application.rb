# rack application

class RackApp

    def call(env)
        req = Rack::Request.new(env)
        [200, { 'Content-Type' => 'text/html' }, ["<h1>Hello from sharath Rack</h1> <h3>the IP is #{req.ip} and your in localhost </h3>"]]
    end

    def available_methods
        # puts 'the availbale methods are'
        # puts "path_info #{req.path_info}"
        # puts "ip #{req.ip}"
        # puts "user_agent #{req.user_agent}"
        # puts "request_method #{req.request_method}"
        # puts "body #{req.body}"
        # puts "media_type #{req.media_type}"
    end
end

require 'rack'

class Application
    def call(env)
        return [ 200, {'Content-type' => 'text/html'}, greeting ]
    end

    def greeting
        resp = Rack::Response.new
        #DateTime.now.strftime('%I:%M:%S %p').include? "PM"
        if Time.now.hour >= 12
            resp.write "Good Afternoon! #{Time.now.hour}"
        else
            resp.write "Good Morning!"
        end
    end
end
class Application 

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)
    
        if req.path == "/items"
            @@items.find {|item| item.price if item}
        else
            resp.write "Route not found"
            resp.status = 404
        end
    
        resp.finish
    end
end


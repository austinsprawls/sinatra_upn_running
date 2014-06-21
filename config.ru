MyApp = proc do |env|
    [200, {'Content-Type' => 'text/plain'}, ['ok']]
end

class MyMiddleWare
    def initialize(app)
        @app = app
    end

    def call(env)
        if env['PATH_INFO'] == '/'
            @app.cal(env)
        else
            [404, {'Content-Type' => 'text/plain'}, ['not ok']]
        end
    end
end

#this is the actual configuration
use MyMiddleWare
run MyApp

module DockerEchoWorker
  class Server
    def initialize(options)
      @options = options

      @port = @options['port'] || 8080
    end

    def run
      app = Rack::Builder.new do
        run DockerEchoWorker::API
      end
      @rack_server = Rack::Server.new({
        app: app,
        server: 'puma',
        Port: @port
      })
      @rack_server.start
    end
  end
end

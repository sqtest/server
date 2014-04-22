class Application
  class << self

    def config
      unless @instance
        yield(self)
        require 'socket'
        require 'pg'
        require 'xmlsimple'
        require 'webrick'

        classLoad('/reloaded_classes')
        classLoad('/modules')
        classLoad('/basic_classes')
        classLoad('')
        classLoad('/models')
        classLoad('/actions')
      end
      @instance ||=self
    end

    def classLoad(dir='')
      Dir[File.dirname(__FILE__) + dir +'/*.rb'].each {|file| require_relative file }
    end

    def db(&block)
      @db ||= Db.new(&block)
    end

    def server(&block)
      @server ||= Server.new(&block)
    end

    def webserver(&block)
      @webserver ||= WebServer.new(&block)
    end

    class Db
      class << self
        def new
          unless @inst
            yield(self)
          end
          @inst ||=self
        end

        def instance
          @instance ||=PGconn.new(@host, @port, '','', @dbname, @username, @password);
        end

        attr_accessor :host, :port, :username, :password, :dbname
      end
    end

    class Server
      class << self
        def new
          unless @inst
            yield(self)
          end
          @inst ||=self
        end

        def instance
          @instance ||= TCPServer.new(@hist, @port)
        end

        attr_accessor :host, :port
      end
    end

    class WebServer
      class << self
        def new
          unless @inst
            yield(self)
          end
          @inst ||=self
        end

        def instance
          @instance ||= WEBrick::HTTPServer.new :Port => @port, :DocumentRoot => @root
        end

        attr_accessor :root, :port
      end
    end

  end
end
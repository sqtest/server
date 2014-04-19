class Application
  class << self

    def config
      unless @instance
        yield(self)
        require_relative '../app/class_reload/String'
        require 'socket'
        require 'pg'
        require 'xmlsimple'
        require_relative '../app/SQServer'
        require_relative '../app/SQThread'
      end
      @instance ||=self
    end

    def db(&block)
      @db ||= Db.new(&block)
    end

    def server(&block)
      @server ||= Server.new(&block)
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

  end
end
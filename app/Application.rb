class Application
  class << self

    def config
      unless @instance
        yield(self)
        require 'socket'
        require 'pg'
        require 'xmlsimple'
      end
      @instance ||=self
    end

    def db(&block)
      @db ||= Db.new(&block)
    end

    class Db
      class << self
        def new
          unless @instance
            yield(self)
          end
          @instance ||=self
        end

        def inst
          @inst ||=PGconn.new(@host, @port, '','', @dbname, @username, @password);
        end

        attr_accessor :host, :port, :username, :password, :dbname
      end
    end
  end
end
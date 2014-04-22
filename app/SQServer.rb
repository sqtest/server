class SQServer
  def listen
    Thread.new(@session) do |ses|
      Application.webserver.instance.start
    end

    while(session = Application.server.instance.accept)
      SQThread.new(session).start()
    end
  end
end
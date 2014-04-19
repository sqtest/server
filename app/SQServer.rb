class SQServer
  def listen
    while(session = Application.server.instance.accept)
      SQThread.new(session).start()
    end
  end
end
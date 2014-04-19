class SQThread
  def initialize(session)
    @session = session
  end

  def start
    Thread.new(@session) do |ses|
      while (request = ses.gets)
        parsedRequest = parseRequest(request)
        if defined?(parsedRequest['action'].to_class())
          action = parsedRequest['action'].to_class().new()
          parsedRequest['params'][:sessionId] = ses.object_id
          responce = {};
          responce['action'] = parsedRequest['action'];
          responce['params'] = action.run(parsedRequest['params'])

          sendResponse(responce)
        end
      end
    end
  end

  def parseRequest(request)
    XmlSimple.xml_in(request, {'ForceArray' => false})
  rescue Exception => e
    false
  end

  def sendResponse(responce)
    @session.print XmlSimple.xml_out(responce, 'AttrPrefix' => true, 'RootName'=>'root')
  end

end
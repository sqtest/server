class SQThread
  def initialize(session)
    @session = session
  end

  def start
    Thread.new(@session) do |ses|
      while (request = ses.gets)
        parsedRequest = parseRequest(request)
        if defined?(parsedRequest['action'].to_class())
          action = parsedRequest['action'].to_class().new(ses.object_id, @fieldid)
          responce = {}
          responce['action'] = parsedRequest['action']

          if ((!@fieldid.nil?) || (@fieldid.nil? && responce['action']=='ActionAuth'))
            actionParams = if parsedRequest['params'].nil?
                             {}
                           else
                             parsedRequest['params']
                           end
            responce['params'] = action.run(actionParams)
            if responce['action']=='ActionAuth' && responce['params']['result']==true
              @fieldid = parsedRequest['params']['fieldid']
            end
          else
            responce['params'] = {"auth" => false}
          end

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
    @session.print XmlSimple.xml_out(responce, 'AttrPrefix' => true, 'RootName' => 'root')
  end

end
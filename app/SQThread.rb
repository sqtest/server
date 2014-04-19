class SQThread
  def initialize(session)
    @session = session
  end

  def start
    Thread.new(@session) do |ses|
      while(request = ses.gets)
        parsedRequest = parseRequest(request)
        if defined?(parsedRequest.action.to_class())
          action = parsedRequest.action.to_class().new()
          responce = action.run(parsedRequest)
          sendResponse(responce)
        end
      end
    end
  end

  def sendPolicyInfo()
    policyInfo = '&lt;?xml version="1.0"?&gt;'
    policyInfo += '&lt;cross-domain-policy&gt;'
    policyInfo += '&lt;allow-access-from domain="*" to-ports="4444,80" /&gt;'
    policyInfo += '&lt;/cross-domain-policy&gt;'
    sendResponse(policyInfo)
  end

  def parseRequest(request)
     XmlSimple.xml_in(request, {'ForceArray' => false })
  rescue Exception => e
     false
  end

  def sendResponse(data)
    @session.print data.to_s
  end
end
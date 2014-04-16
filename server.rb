puts 'Debug Server v 0.01'

policyInfo = '&lt;?xml version="1.0"?&gt;'
policyInfo += '&lt;cross-domain-policy&gt;'
policyInfo += '&lt;allow-access-from domain="*" to-ports="4444,80" /&gt;'
policyInfo += "&lt;/cross-domain-policy&gt;\0"

require 'socket'
server = TCPServer.new('localhost', 4444);

while(session = server.accept)

  Thread.new(session) do |s|

    s.print policyInfo

    while(msg = s.gets)
      msg.strip!
      puts msg
      s.print msg
    end

  end

end
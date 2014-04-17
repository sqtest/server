require 'socket'
require 'pg'
require 'xmlsimple'

@conn = PGconn.new('localhost', 5432, '','', 'test', 'test', 'test');

@fieldId = 0;
def sendHeaders(ses)
  policyInfo = '&lt;?xml version="1.0"?&gt;'
  policyInfo += '&lt;cross-domain-policy&gt;'
  policyInfo += '&lt;allow-access-from domain="*" to-ports="4444,80" /&gt;'
  policyInfo += "&lt;/cross-domain-policy&gt;\0"
  ses.print policyInfo
end

def response(ses, resp)
  ses.print resp+"\0"
end

def loadField()

  str = '<root><action>load</action><field '
  @conn.exec_params( "SELECT * FROM fields where id=$1", [@fieldId] ) do |result|
    str += 'coins="'+result[0]['coins']+'" population="'+result[0]['population']+'" power="'+result[0]['power']+'">'
  end

  @conn.exec_params( "SELECT * FROM gameobjects where fieldid=$1", [@fieldId] ) do |result|
    result.each do |row|
     str += '<'+row['type']+' x="'+row['x']+'" y="'+row['y']+'" time="'+row['time']+'" contract="'+row['contract']+'" id="'+row['id']+'" />'
    end

  end

  str += '</field></root>'
  puts str
  return str
  #return '<root><action>load</action><field coins="'+res['coins']+'" population="'+res['population']+'" power="'+res['power']+'">'+'</field></root>';
end
def mineStart(objectid, contract)
  @conn.exec_params( "SELECT * FROM gameobjects where id=$1 and contract=0", [objectid] ) do |result|
    if result.count > 0
      return '<root><action>mineStart</action><objectid>'+objectid+'</objectid><contract>'+contract+'</contract></root>'
    end
    puts result
  end
end

server = TCPServer.new('localhost', 4444);
fieldId = 0
while(session = server.accept)
  Thread.new(session) do |s|
    sendHeaders(s)
    while(msg = s.gets)
      begin
        ref = XmlSimple.xml_in(msg, {'ForceArray' => false })
        resp = ''

        puts ref['action']

        if ref['action']=='auth'
          @fieldId = ref['fieldId']
        elsif ref['action']=='load'
          resp = loadField()
        elsif ref['action']=='mineStart'
          resp = mineStart(ref['objectid'], ref['contract'])
        end

        if resp != ''
          response(s, resp);
        end
      rescue Exception => e
        puts e
      end
    end
  end
end

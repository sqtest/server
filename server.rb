require_relative 'app/Application'

Application.config do |app|
  app.db do |db|
    db.host = 'localhost'
    db.port = 5432
    db.username = 'test'
    db.password = 'test'
    db.dbname = 'test'
  end

  app.server do |server|
    server.host = '127.0.0.1'
    server.port = 4444
  end

  app.webserver do |webserver|
    webserver.root = Dir.pwd+'/images'
    webserver.port = 80
  end

end

server = SQServer.new()
server.listen()
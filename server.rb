require_relative 'app/Application'

Application.config do |app|
  app.db do |db|
    db.host = '127.0.0.1'
    db.port = 5432
    db.username = 'test'
    db.password = 'test'
    db.dbname = 'test'
  end
end
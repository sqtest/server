class ActionAuth
  def run(params)
    session = SessionModel.new()
    result = session.insert({"id"=>params[:sessionId], "fieldid"=>params['fieldid']})
    {"result"=>result}
  end
end
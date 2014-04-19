class ActionAuth < CommonAction
  def run(params)
    session = SessionModel.new()
    result = session.insert({"id"=>@sessionId, "fieldid"=>params['fieldid']})
    {"result"=>result}
  end
end
class LoadField < BasicAction
  def run(params)
    findByPk(Session.new(@sessionId).fieldId)
  end
end
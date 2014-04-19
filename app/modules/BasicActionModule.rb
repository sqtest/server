module BasicActionModule
  def isSessionExists
    return SessionModel.new().findByPk(@sessionId).size > 0
  end

  def initialize(sessionId)
    @sessionId = sessionId
  end

end
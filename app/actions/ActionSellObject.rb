class ActionSellObject < BasicAction
  def run(params)
    object = GameobjectsModel.new().findByPk(params["id"])
    result={"id"=>params["id"], "result"=>false}
    params['result'] = false
    unless object.nil?
      result['result'] = GameobjectsModel.new().sell(params["id"])
    end
    {"result"=>result}
  end
end
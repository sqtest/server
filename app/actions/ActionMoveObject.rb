class ActionMoveObject < BasicAction
  def run(params)
    object = GameobjectsModel.new().findByPk(params["id"])
    result={"id"=>params["id"],"x"=>params['x'],"y"=>params['y'], "result"=>false}
    params['result'] = false
    unless object.nil?
      result['result'] = GameobjectsModel.new().update({"x"=>params['x'], "y"=>params['y']},{"id"=>params["id"]})
    end
    {"result"=>result}
  end
end
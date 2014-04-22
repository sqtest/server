class ActionStartContract < BasicAction
  def run(params)
    object = GameobjectsModel.new().findByPk(params["id"])
    result={"id"=>params["id"],"contractid"=>params['contractid'], "result"=>true}
    if ((object['time'].to_i< Time.now.to_i))
      if(ContractsModel.new().startContract(params['id'], params['contractid']))
        result["result"] = true
        object = GameobjectsModel.new().findByPk(params["id"])
        result["time"] = object['time']
      else
        result["result"] = false
      end
    end
    {"result"=>result}
  end
end
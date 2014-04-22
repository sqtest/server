class ActionCheckContract < BasicAction
  def run(params)
    object = GameobjectsModel.new().findByPk(params["id"])
    result={"id"=>params["id"], "result"=>true}
    if ((object['time'].to_i< Time.now.to_i) && object['contract'].to_i>0)
      if(ContractsModel.new().completeContract(params['id']))
        result["result"] = true
      else
        result["result"] = false
      end
    end
    {"result"=>result}
  end
end
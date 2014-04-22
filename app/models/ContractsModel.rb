class ContractsModel < BasicModel
  def db
    'contracts'
  end

  def completeContract(objectId)
    go = GameobjectsModel.new().findByPk(objectId)
    unless (go.nil? && go['contract'] == 0)
      cr = findByPk(go['contract'])
      unless cr.nil?
        GameobjectsModel.new().update({"contract"=>0}, {"id"=>objectId})
        fm = FieldsModel.new()
        fm.query("update #{fm.db} set coins=coins+$1, population=population+$2, power=power+$3 where id=$4", [
            cr['coins'].to_i, cr['population'].to_i, cr['power'].to_i,go['fieldid'].to_i
        ]);
        return true
      end
    end
    return false
  end

  def startContract(objectId, contractid)
    go = GameobjectsModel.new().findByPk(objectId)
    if (!go.nil? && (go['time'].to_i< Time.now.to_i) && go['contract'].to_i==0)
      cr = findByPk(contractid)
      unless cr.nil?
        fm = FieldsModel.new().findByPk(go['fieldid'].to_i)
        unless cr.nil?
          if((fm['coins']>=cr['coins']))
            #FieldsModel.new().update({"coins"=>"coins-#{cr['coins']}"}, {"id"=>go['fieldid'].to_i})
            GameobjectsModel.new().update({"contract"=>cr['id'], "time"=>(Time.now.to_i+cr['time'].to_i)}, {"id"=>objectId})
            return true
          end
        end
      end
    end
    false
  end
end
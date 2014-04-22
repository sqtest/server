class GameobjectsModel < BasicModel
  def db
    'gameobjects'
  end

  def sell(id)
    obj = findByPk(id)
    unless obj.nil?
      tpl = TemplatesModel.new().find({"type"=>obj['type']})
      unless tpl.nil?
        field = FieldsModel.new().findByPk(obj['fieldid'])
        unless field.nil?
          delete({"id"=>id})

          fm = FieldsModel.new()
          fm.query("update #{fm.db} set coins=coins+$1, population=population+$2, power=power+$3 where id=$4", [
              (-1*(tpl['price_coins'].to_i() / 2)), (-1*(tpl['price_population'].to_i())), (-1*(tpl['price_power'].to_i() )),obj['fieldid'].to_i
          ]);

          return true
        end
      end
    end
    false
  end
end
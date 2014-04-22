class ActionLoadField < BasicAction
  def run(params)
    field = FieldsModel.new().findByPk(@fieldid);

    result = {
        "@coins" => field['coins'],
        "@population" => field['population'],
        "@power" => field['power'],
        "@sizex" => field['sizex'],
        "@sizey" => field['sizey']
    }

    gameobjects = GameobjectsModel.new().findAll({"fieldid" => @fieldid})

    gameobjects.each do |obj|
      if result[obj['type']].nil?
        result[obj['type']] = []
      end
      result[obj['type']].push({
                                            "@x" => obj['x'],
                                            "@y" => obj['y'],
                                            "@time" => obj['time'],
                                            "@contract" => obj['contract'],
                                            "@id" => obj['id']
                                        })
    end
    {"field"=>result}
  end
end

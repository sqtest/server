class ActionMoneyCheck < BasicAction
  def run(params)
    field = FieldsModel.new().findByPk(@fieldid);

    unless field.nil?
      {"result"=>[
          "result"=>true,
          "coins"=>field['coins'],
          "population"=>field['population'],
          "power"=>field['power'],
      ]}
    else
      {"result"=>["result"=>false]}
    end
  end
end

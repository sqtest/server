class ActionLoadTemplates < BasicAction
  def run(params)
    templates = TemplatesModel.new().findAll();
    result = {}
    templates.each do |obj|
      result[obj['type']] = {
          "@price_coins" => obj['price_coins'],
          "@price_population" => obj['price_population'],
          "@price_power" => obj['price_power'],
          "@autotask" => obj['autotask']
      }
    end
    {"result"=>result}
  end
end
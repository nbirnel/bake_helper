json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :type, :price_per_pound
  json.url ingredient_url(ingredient, format: :json)
end

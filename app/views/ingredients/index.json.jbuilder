json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :quantity, :price_per_pound
  json.url ingredient_url(ingredient, format: :json)
end

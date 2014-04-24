json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :prep_time, :attribution, :notes, :history
  json.url recipe_url(recipe, format: :json)
end

json.array!(@zoos) do |zoo|
  json.extract! zoo, :id, :species, :name
  json.url zoo_url(zoo, format: :json)
end

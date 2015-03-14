json.array!(@places) do |place|
  json.extract! place, :id, :name, :slug, :description, :address, :phone
  json.url api_place_url(place, format: :json)
end

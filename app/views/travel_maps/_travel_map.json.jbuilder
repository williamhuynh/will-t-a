json.extract! travel_map, :id, :name, :description, :duration, :cost, :profile_id, :created_at, :updated_at
json.url travel_map_url(travel_map, format: :json)
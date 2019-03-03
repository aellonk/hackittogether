json.extract! trip, :id, :user_id, :location, :price, :category, :title, :description, :reward, :created_at, :updated_at
json.url trip_url(trip, format: :json)

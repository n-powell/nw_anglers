json.extract! trip, :id, :latitude, :longitude, :address, :description, :trip_date, :created_at, :updated_at
json.url trip_url(trip, format: :json)

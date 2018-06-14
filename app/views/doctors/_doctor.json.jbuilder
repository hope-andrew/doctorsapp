json.extract! doctor, :id, :name, :address, :latitude, :longitude, :group_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)

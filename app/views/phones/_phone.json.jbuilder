json.extract! phone, :id, :phone_number, :comment, :person_id, :created_at, :updated_at
json.url person_phone_url(@person, phone, format: :json)

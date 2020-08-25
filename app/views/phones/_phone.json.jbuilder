json.extract! phone, :id, :phone_number, :comment, :created_at, :updated_at
json.url phone_url(phone, format: :json)

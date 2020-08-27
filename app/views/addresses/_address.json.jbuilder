json.extract! address, :id, :street, :town, :zipcode, :state, :country, :person_id, :created_at, :updated_at
json.url person_address_url(@person, address, format: :json)

json.extract! email, :id, :email_address, :comment, :person_id, :created_at, :updated_at
json.url person_email_url(@person, email, format: :json)

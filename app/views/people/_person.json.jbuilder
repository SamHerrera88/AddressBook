json.extract! person, :id, :saluation, :first_name, :middle_name, :last_name, :ssn, :date_of_birth, :comment, :created_at, :updated_at
json.url person_url(person, format: :json)

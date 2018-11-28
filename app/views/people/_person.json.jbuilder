json.extract! person, :id, :name, :surname, :age, :phone, :country, :created_at, :updated_at
json.url person_url(person, format: :json)

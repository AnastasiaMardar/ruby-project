json.extract! person, :id, :name, :surname, :age, :phone, :country, :street, :house_number, :created_at, :updated_at
json.url person_url(person, format: :json)

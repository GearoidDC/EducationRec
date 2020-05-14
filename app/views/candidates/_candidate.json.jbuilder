json.extract! candidate, :id, :name, :phone_number, :email, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)

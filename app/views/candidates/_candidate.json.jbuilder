json.extract! candidate, :id, :name, :phone_number, :email, :proficiency, :updated_at
json.url candidate_url(candidate, format: :json)

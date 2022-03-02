json.extract! client, :id, :name, :legal_person, :CI, :phone, :business_id, :created_at, :updated_at
json.url client_url(client, format: :json)

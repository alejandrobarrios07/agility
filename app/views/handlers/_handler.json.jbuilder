json.extract! handler, :id, :name, :country, :number, :created_at, :updated_at
json.url handler_url(handler, format: :json)

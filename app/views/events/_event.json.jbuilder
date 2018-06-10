json.extract! event, :id, :name, :date, :comments, :created_at, :updated_at
json.url event_url(event, format: :json)

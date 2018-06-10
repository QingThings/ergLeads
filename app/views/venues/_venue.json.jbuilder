json.extract! venue, :id, :name, :kind, :address, :city, :state, :region, :zipcode, :email, :phone, :comments, :created_at, :updated_at
json.url venue_url(venue, format: :json)

json.array!(@users) do |user|
  json.extract! user, :id, :Recipe_id, :name, :bio
  json.url user_url(user, format: :json)
end

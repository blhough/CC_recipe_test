json.array!(@cookbooks) do |cookbook|
  json.extract! cookbook, :id, :title, :subtitle
  json.url cookbook_url(cookbook, format: :json)
end

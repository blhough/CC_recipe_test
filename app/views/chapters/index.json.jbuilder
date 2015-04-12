json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :cookbook_id, :title, :subtitle
  json.url chapter_url(chapter, format: :json)
end

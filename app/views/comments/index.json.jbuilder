json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :published_at
  json.url comment_url(comment, format: :json)
end

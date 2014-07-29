json.array!(@blogs) do |blog|
  json.extract! blog, :id, :text, :title
  json.url blog_url(blog, format: :json)
end

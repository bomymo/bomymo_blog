json.extract! blogpost, :id, :subject, :blogentry, :author, :blogdate, :image_url, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)

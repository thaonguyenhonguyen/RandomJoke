json.extract! joke, :id, :joke_content, :created_at, :updated_at
json.url joke_url(joke, format: :json)

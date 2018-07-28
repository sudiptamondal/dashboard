json.extract! note, :id, :title, :content, :alarm, :created_at, :updated_at
json.url note_url(note, format: :json)

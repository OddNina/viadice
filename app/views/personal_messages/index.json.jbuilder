json.array!(@personal_messages) do |personal_message|
  json.extract! personal_message, :timestamp, :content, :originator, :receptor, :subject
  json.url personal_message_url(personal_message, format: :json)
end

json.messages @messages do |message|
  json.id message.id
  json.content message.content
  json.created_at message.created_at
  json.user do
    json.id message.user.id
    json.name message.user.first_name
  end
end

json.array!(@games) do |game|
  json.extract! game, :title, :description
  json.url game_url(game, format: :json)
end

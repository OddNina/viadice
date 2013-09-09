json.array!(@game_styles) do |game_style|
  json.extract! game_style, :title
  json.url game_style_url(game_style, format: :json)
end

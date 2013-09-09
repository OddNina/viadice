class GroupToGameStyle < ActiveRecord::Base
  belongs_to :group, inverse_of: :group_to_game_styles
  belongs_to :game_style, inverse_of: :group_to_game_styles
end

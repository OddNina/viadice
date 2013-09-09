class GameStyle < ActiveRecord::Base

  # relationships
  has_many :group_to_game_styles, inverse_of: :game_style
  has_many :groups, through: :group_to_game_styles

  def to_s
    self.title
  end  
end

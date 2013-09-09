class Game < ActiveRecord::Base

  # relationships
  has_many :groups, inverse_of: :game
  
  def to_s
    self.title
  end
end

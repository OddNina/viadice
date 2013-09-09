class Group < ActiveRecord::Base

  # relationships
  belongs_to :gamemaster, class_name: 'Profile', inverse_of: :own_groups

  has_many :memberships, inverse_of: :group
  has_many :profiles, through: :memberships
  
  has_many :group_to_game_styles, inverse_of: :group
  has_many :game_styles, through: :group_to_game_styles

  belongs_to :game, inverse_of: :groups
  has_many :news_items, inverse_of: :group

  validates_presence_of :title
  
  # has_many :personal_messages
  
  #attachment
  has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "50x50>"  }, :default_url => "/system/groups/images/:style/missing.png"
  
  def member?(profile)
    self.profiles.include? profile
  end 
end

class Profile < ActiveRecord::Base

  # relationships
  has_many :own_groups, inverse_of: :gamemaster, class_name: 'Group', foreign_key: 'gamemaster_id'
  has_many :memberships, inverse_of: :profile
  has_many :groups, through: :memberships

  has_many :news_items, through: :groups
  has_many :games, through: :groups

  belongs_to :user
  
  #attachment
  
  has_attached_file :photo, :styles => { :medium => "200x200", :thumb => "100x100#" }, :default_url => "/system/profiles/photos/:style/missing.png"

  validates_presence_of :first_name, :last_name
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def to_s
    self.full_name
  end
end

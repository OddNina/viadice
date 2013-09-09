class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # relationships
  # todo: entfernen, das gehört ins profile
  has_many :games
  has_many :personal_messages
  
  has_one :profile

  def to_s
    self.email
  end
  
  def display_name 
    if self.profile.nil?
      self.email
    else
      self.profile.full_name
    end
  end
end
